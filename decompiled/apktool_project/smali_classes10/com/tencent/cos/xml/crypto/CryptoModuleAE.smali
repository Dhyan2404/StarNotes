.class public Lcom/tencent/cos/xml/crypto/CryptoModuleAE;
.super Lcom/tencent/cos/xml/crypto/CryptoModuleBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/CryptoModuleAE;-><init>(Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;-><init>(Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V

    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cipherLiteForNextPart(Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;)Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0
.end method

.method public final ciphertextLength(J)J
    .locals 2

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final computeLastPartSize(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)J
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getFileLength()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getObjectSecurely(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object v0

    new-instance v1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getRange()Lcom/tencent/cos/xml/common/Range;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kekMaterialsProvider:Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [J

    invoke-virtual {v2}, Lcom/tencent/cos/xml/common/Range;->getStart()J

    move-result-wide v6

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    invoke-virtual {v2}, Lcom/tencent/cos/xml/common/Range;->getEnd()J

    move-result-wide v6

    const/4 v2, 0x1

    aput-wide v6, v5, v2

    :goto_0
    const/4 v6, 0x0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->fromObjectMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;[JZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    new-instance v1, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;)V

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".decrypt"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/tencent/cos/xml/utils/FileUtils;->saveInputStreamToTmpFile(Ljava/io/InputStream;Ljava/io/File;JJ)V

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/FileUtils;->deleteFileIfExist(Ljava/lang/String;)Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "decrypt file failed."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public isStrict()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final newUploadContext(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;
    .locals 1

    new-instance p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)V

    return-object p0
.end method
