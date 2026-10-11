.class public Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/crypto/QCLOUDKMS;


# instance fields
.field private credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

.field private final kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/tencentcloudapi/kms/v20190118/KmsClient;-><init>(Lcom/tencentcloudapi/common/Credential;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-void
.end method

.method private getClientException(Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 2

    invoke-virtual {p1}, Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: %s, error code: %s, requestId: %s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p2, Lcom/tencent/cos/xml/common/ClientErrorCode;->KMS_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p2

    invoke-direct {p1, p2, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public assetCredentials()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-interface {v0}, Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;->getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->getSecretId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencentcloudapi/common/Credential;

    invoke-direct {v3, v1, v2, v0}, Lcom/tencentcloudapi/common/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->getSecretId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencentcloudapi/common/Credential;

    invoke-direct {v3, v1, v0}, Lcom/tencentcloudapi/common/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    invoke-virtual {p0, v3}, Lcom/tencentcloudapi/kms/v20190118/KmsClient;->setCredential(Lcom/tencentcloudapi/common/Credential;)V

    return-void

    :cond_1
    const-string p0, "credentials is neither SessionQCloudCredentials nor BasicQCloudCredentials "

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public decrypt(Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/DecryptResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->assetCredentials()V

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    invoke-virtual {v0, p1}, Lcom/tencentcloudapi/kms/v20190118/KmsClient;->Decrypt(Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/DecryptResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/tencentcloudapi/common/exception/TencentCloudSDKException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "TencentCloudKMS Service got exception while Decrypt"

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->getClientException(Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public encrypt(Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/EncryptResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->assetCredentials()V

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    invoke-virtual {v0, p1}, Lcom/tencentcloudapi/kms/v20190118/KmsClient;->Encrypt(Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/EncryptResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/tencentcloudapi/common/exception/TencentCloudSDKException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "TencentCloudKMS Service got exception while Encrypt"

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->getClientException(Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public generateDataKey(Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;)Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->assetCredentials()V

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->kmsClient:Lcom/tencentcloudapi/kms/v20190118/KmsClient;

    invoke-virtual {v0, p1}, Lcom/tencentcloudapi/kms/v20190118/KmsClient;->GenerateDataKey(Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;)Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/tencentcloudapi/common/exception/TencentCloudSDKException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "TencentCloudKMS Service got exception while GenerateDataKey"

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;->getClientException(Lcom/tencentcloudapi/common/exception/TencentCloudSDKException;Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
