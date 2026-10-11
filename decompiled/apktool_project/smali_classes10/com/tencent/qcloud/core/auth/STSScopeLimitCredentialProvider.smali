.class public Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;
.super Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;
.source "SourceFile"


# instance fields
.field private requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;->requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)Lcom/tencent/qcloud/core/http/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->build()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public fetchNewCredentials([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    const-string v0, "fetch new credentials error "

    const-string v1, "application/json"

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->jsonify([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;->requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {v1, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    iget-object p1, p0, Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;->requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;->buildRequest(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->getDefault()Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeNow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qcloud/core/http/HttpResult;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResult;->content()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/auth/STSScopeLimitCredentialProvider;->parseServerResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResult;->asException()Lcom/tencent/qcloud/core/common/QCloudServiceException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseServerResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->parseStandardSTSJsonResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object p0

    return-object p0
.end method
