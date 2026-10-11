.class public Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;
.super Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;
    }
.end annotation


# instance fields
.field private httpRequest:Lcom/tencent/qcloud/core/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stsVersion:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->stsVersion:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    .line 10
    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    .line 11
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    .line 12
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->stsVersion:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    .line 6
    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    .line 7
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->httpRequest:Lcom/tencent/qcloud/core/http/HttpRequest;

    .line 8
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->stsVersion:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    return-void
.end method

.method public static parseStandardSTS3JsonResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    if-eqz p0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "Response"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const-string p0, "Credentials"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string v1, "ExpiredTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "Token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "TmpSecretId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "TmpSecretKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get credentials error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    const-string p0, "parse sts3.0 session json fails"

    invoke-direct {v0, p0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    const-string v1, "fetch credential response content is null"

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static parseStandardSTSJsonResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    if-eqz p0, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const-string p0, "credentials"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz p0, :cond_2

    const-string v1, "expiredTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "tmpSecretId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "tmpSecretKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v0, 0x0

    cmp-long p0, v6, v0

    if-lez p0, :cond_1

    new-instance p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-object v2, p0

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_2
    if-lez v1, :cond_3

    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get credentials error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    const-string p0, "parse sts2.0 session json fails"

    invoke-direct {v0, p0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    const-string v1, "fetch credential response content is null"

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
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

    .line 2
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->build()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public buildRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    const-string v0, "fetch new credentials error "

    iget-object v1, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->httpRequest:Lcom/tencent/qcloud/core/http/HttpRequest;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->buildRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->requestBuilder:Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->buildRequest(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->getDefault()Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeNow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/http/HttpResult;

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpResult;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->parseServerResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpResult;->asException()Lcom/tencent/qcloud/core/common/QCloudServiceException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    const-string v1, "please pass http request object for fetching"

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public parseServerResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->stsVersion:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    sget-object v0, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;->VERSION_2:Lcom/tencent/qcloud/core/auth/SessionCredentialProvider$StsVersion;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->parseStandardSTSJsonResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/SessionCredentialProvider;->parseStandardSTS3JsonResponse(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object p0

    :goto_0
    return-object p0
.end method
