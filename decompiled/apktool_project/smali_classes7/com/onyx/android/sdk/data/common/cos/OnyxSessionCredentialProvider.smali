.class public final Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;
.super Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;",
        "Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;",
        "cosConfig",
        "Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;",
        "(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V",
        "fetchNewCredentials",
        "Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cosConfig:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cosConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;->cosConfig:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    return-void
.end method


# virtual methods
.method public fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;->cosConfig:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getStsServer()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getCertificatesService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    invoke-interface {p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;->getCosStss()Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/cos/CosStsResponse;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/cos/CosStsBean;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long v8, v0, v2

    :try_start_0
    new-instance v0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosStsBean;->getCredentials()Lcom/onyx/android/sdk/data/common/cos/CosCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosCredentials;->getTmpSecretId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosStsBean;->getCredentials()Lcom/onyx/android/sdk/data/common/cos/CosCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosCredentials;->getTmpSecretKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosStsBean;->getCredentials()Lcom/onyx/android/sdk/data/common/cos/CosCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosCredentials;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosStsBean;->getExpiredTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "sts data is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
