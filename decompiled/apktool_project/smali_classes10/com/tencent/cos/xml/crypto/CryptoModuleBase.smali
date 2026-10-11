.class public abstract Lcom/tencent/cos/xml/crypto/CryptoModuleBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/crypto/CryptoModule;


# static fields
.field protected static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final IS_MULTI_PART:Z = true


# instance fields
.field protected final contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

.field protected final cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field protected final cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

.field protected final kekMaterialsProvider:Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;

.field protected final kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

.field protected final multipartUploadContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    .line 12
    iput-object p3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kekMaterialsProvider:Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;

    .line 13
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 14
    invoke-static {}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->from()Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    .line 15
    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kekMaterialsProvider:Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;

    .line 5
    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 6
    invoke-static {}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->from()Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    .line 7
    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    .line 8
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    return-void
.end method

.method private buildContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getIVLengthInBytes()I

    move-result v0

    new-array v2, v0, [B

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->mergeMaterialDescriptions(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object p3

    new-instance v0, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;

    invoke-direct {v0}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;-><init>()V

    :try_start_0
    invoke-static {p3}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;->setEncryptionContext(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;->setKeyId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getKeySpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;->setKeySpec(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    invoke-interface {p1, v0}, Lcom/tencent/cos/xml/crypto/QCLOUDKMS;->generateDataKey(Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyRequest;)Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyResponse;->getPlaintext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/cos/xml/s3/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v3}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencentcloudapi/kms/v20190118/models/GenerateDataKeyResponse;->getCiphertextBlob()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    new-instance v0, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;

    invoke-direct {v0, p1, p3}, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    invoke-static {v1, v2, p0, p2, v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->wrap(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/SecuredCEK;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "generate datakey request set encryption context got json processing exception"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->generateCEK(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    iget-object v6, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kms:Lcom/tencent/cos/xml/crypto/QCLOUDKMS;

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static getAdjustedCryptoRange(Lcom/tencent/cos/xml/common/Range;)Lcom/tencent/cos/xml/common/Range;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/common/Range;->getStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->getCipherBlockLowerBound(J)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/cos/xml/common/Range;->getEnd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/common/Range;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->getCipherBlockUpperBound(J)J

    move-result-wide v4

    .line 4
    :goto_0
    new-instance p0, Lcom/tencent/cos/xml/common/Range;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/tencent/cos/xml/common/Range;-><init>(JJ)V

    return-object p0
.end method

.method public static getAdjustedCryptoRange([J)[J
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [J

    .line 6
    invoke-static {v1, v2}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->getCipherBlockLowerBound(J)J

    move-result-wide v1

    aput-wide v1, v4, v0

    .line 7
    aget-wide v0, p0, v3

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->getCipherBlockUpperBound(J)J

    move-result-wide v0

    aput-wide v0, v4, v3

    return-object v4

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCipherBlockLowerBound(J)J
    .locals 4

    const-wide/16 v0, 0x10

    rem-long v2, p0, v0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method

.method private static getCipherBlockUpperBound(J)J
    .locals 4

    const-wide/16 v0, 0x10

    rem-long v2, p0, v0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    :cond_0
    return-wide p0
.end method

.method private newCOSCipherLiteInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;J)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->openInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, p4, v0}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object p0, p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/CipherLite;->markSupported()Z

    move-result p2

    const/16 p3, 0x800

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V

    return-object p2

    .line 6
    :cond_1
    new-instance p2, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create cipher input stream: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private newContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsFactory;->getEncryptionMaterials()Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->buildContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "No material available from the encryption material provider"

    .line 5
    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private newContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ")",
            "Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->buildContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private openInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/io/InputStream;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p0, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final cipherInitMultipartUploadRequest(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;->getMetadata()Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "x-cos-meta-client-side-encryption-unencrypted-content-md5"

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-cos-meta-client-side-encryption-unencrypted-content-length"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentLength(J)V

    :cond_2
    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;->setMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    return-object p1
.end method

.method public abstract cipherLiteForNextPart(Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;)Lcom/tencent/cos/xml/crypto/CipherLite;
.end method

.method public abstract ciphertextLength(J)J
.end method

.method public completeMultipartUploadSecurely(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in COS is incomplete and corrupt."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {v1, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public abstract computeLastPartSize(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)J
.end method

.method public final createContentCryptoMaterial(Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->kekMaterialsProvider:Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public final generateCEK(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getKeyWrapScheme()Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "BC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    if-eqz p0, :cond_6

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move p0, v0

    :goto_3
    const/16 p1, 0xa

    if-ge p0, p1, :cond_5

    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    const-string p0, "Failed to generate secret key"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to generate envelope symmetric key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public final getCOSCryptoScheme()Lcom/tencent/cos/xml/crypto/COSCryptoScheme;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cryptoScheme:Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    return-object p0
.end method

.method public getCryptoContext(Ljava/lang/String;)Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    return-object p0
.end method

.method public hasMultipartUploadContext(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public initMultipartUploadSecurely(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cipherInitMultipartUploadRequest(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->createContentCryptoMaterial(Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;->getMetadata()Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    invoke-direct {v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>()V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->updateMetadataWithContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;->setMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {v1, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object v1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newUploadContext(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    iget-object v0, v1, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;->initMultipartUpload:Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;->uploadId:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public newCOSCipherLiteInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/CipherLite;)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->openInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/io/InputStream;

    move-result-object p0

    .line 9
    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/CipherLite;->markSupported()Z

    move-result p1

    const/16 v0, 0x800

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    invoke-direct {p1, p0, p2, v0}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;

    invoke-direct {p1, p0, p2, v0}, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create cipher input stream: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public final newMultipartCOSCipherInputStream(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/crypto/CipherLite;)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getSrcPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tencent/cos/xml/crypto/ResettableInputStream;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/crypto/ResettableInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    new-instance p0, Lcom/tencent/cos/xml/crypto/InputSubstream;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getFileOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getFileContentLength()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->isLastPart()Z

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/cos/xml/crypto/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/CipherLite;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    const/16 v6, 0x800

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->isLastPart()Z

    move-result v8

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;IZZ)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;

    const/16 v6, 0x800

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->isLastPart()Z

    move-result v8

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create cipher input stream: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public abstract newUploadContext(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;
.end method

.method public final plaintextLength(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ObjectMetadata;)J
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/qcloud/core/util/QCloudUtils;->getUriContentLength(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public putObjectSecurely(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->createContentCryptoMaterial(Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->wrapWithCipher(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;->getMetadata()Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->updateMetadataWithContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;->setMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->putObject(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public final updateMetadataWithContentCryptoMaterial(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/crypto/ObjectMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    invoke-direct {p1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->toObjectMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public uploadPartAsyncSecurely(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 9

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->isLastPart()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v3}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getFileLength()J

    move-result-wide v5

    int-to-long v7, v3

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v7, v5

    if-nez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") with the exception of the last part."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getPartNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->beginPartUpload(I)V

    invoke-virtual {p0, v3}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cipherLiteForNextPart(Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newMultipartCOSCipherInputStream(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/crypto/CipherLite;)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p1, v2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setSrcPath(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setFileOffset(J)V

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->computeLastPartSize(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    invoke-virtual {p1, v4, v5}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setFileContentLength(J)V

    :cond_3
    invoke-virtual {v3}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    :try_end_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-virtual {v3}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_6
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No client-side information available on upload ID "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v3, v2

    :goto_4
    :try_start_3
    invoke-interface {p2, p1, p0, v2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    :cond_8
    return-void

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    :cond_9
    throw p0
.end method

.method public uploadPartSecurely(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->isLastPart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getFileLength()J

    move-result-wide v3

    int-to-long v5, v0

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with the exception of the last part."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getPartNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->beginPartUpload(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cipherLiteForNextPart(Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newMultipartCOSCipherInputStream(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/crypto/CipherLite;)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setSrcPath(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setFileOffset(J)V

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->computeLastPartSize(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    invoke-virtual {p1, v2, v3}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setFileContentLength(J)V

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->cos:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPart(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    :cond_6
    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No client-side information available on upload ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public final wrapWithCipher(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)Lcom/tencent/cos/xml/model/object/PutObjectRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;->getMetadata()Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    invoke-direct {v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->openInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    const-wide/16 v5, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCOSMd5(Ljava/io/InputStream;JJ)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "x-cos-meta-client-side-encryption-unencrypted-content-md5"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->plaintextLength(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ObjectMetadata;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_3

    const-string v2, "x-cos-meta-client-side-encryption-unencrypted-content-length"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->ciphertextLength(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentLength(J)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;->setMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newCOSCipherLiteInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;J)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setSrcPath(Ljava/lang/String;)V

    return-object p1
.end method
