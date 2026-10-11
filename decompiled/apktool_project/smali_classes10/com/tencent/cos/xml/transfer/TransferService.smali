.class public Lcom/tencent/cos/xml/transfer/TransferService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field private cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

.field private kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

.field protected transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/transfer/TransferConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 3
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/TransferService;->transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TransferConfig is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CosXmlService is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/transfer/TransferConfig;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/TransferService;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/transfer/TransferConfig;)V

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/cos/xml/transfer/TransferService;->newTencentCloudKMSClient(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/TransferService;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    .line 8
    new-instance v0, Lcom/tencent/cos/xml/crypto/CryptoModuleAE;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v1

    invoke-direct {v0, p2, p1, v1, p3}, Lcom/tencent/cos/xml/crypto/CryptoModuleAE;-><init>(Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    return-void
.end method

.method private newTencentCloudKMSClient(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;

    invoke-direct {v0, p0, p1}, Lcom/tencent/cos/xml/crypto/TencentCloudKMSClient;-><init>(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    return-object v0
.end method


# virtual methods
.method public download(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/transfer/COSDownloadTask;
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    new-instance v1, Lcom/tencent/cos/xml/crypto/COSDirectImpl;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-direct {v1, v2, p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/crypto/CryptoModuleBase;)V

    invoke-direct {v0, v1, p1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/GetObjectRequest;)V

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->start()V

    return-object v0
.end method

.method public upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/transfer/COSUploadTask;
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSUploadTask;

    new-instance v1, Lcom/tencent/cos/xml/crypto/COSDirectImpl;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/TransferService;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-direct {v1, v2, v3}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/crypto/CryptoModuleBase;)V

    invoke-direct {v0, v1, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/TransferService;->transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;

    iget-wide v1, p1, Lcom/tencent/cos/xml/transfer/TransferConfig;->sliceSizeForUpload:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->setPartSize(J)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/TransferService;->transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;

    iget-wide v1, p1, Lcom/tencent/cos/xml/transfer/TransferConfig;->divisionForUpload:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->setSliceSizeThreshold(J)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/TransferService;->transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig;->isForceSimpleUpload()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->forceSimpleUpload(Z)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TransferService;->transferConfig:Lcom/tencent/cos/xml/transfer/TransferConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/TransferConfig;->isVerifyCRC64()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->setVerifyCRC64(Z)V

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->start()V

    return-object v0
.end method
