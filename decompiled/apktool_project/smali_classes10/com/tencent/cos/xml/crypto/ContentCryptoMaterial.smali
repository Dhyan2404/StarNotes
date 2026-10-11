.class final Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

.field private final encryptedCEK:[B

.field private final kekMaterialsDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyWrappingAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;[BLjava/lang/String;Lcom/tencent/cos/xml/crypto/CipherLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Lcom/tencent/cos/xml/crypto/CipherLite;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    iput-object p3, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    return-void
.end method

.method private static cek([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p4, p5}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cekByKMS([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p4

    const-string p5, "Key encrypting key not available"

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-eqz p2, :cond_6

    :goto_0
    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    :goto_1
    const/4 p4, 0x4

    invoke-virtual {p3, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p2, 0x3

    invoke-virtual {p3, p0, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_2
    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p0, "Unable to decrypt symmetric key from object metadata"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {p5}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private static cekByKMS([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance p1, Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;

    invoke-direct {p1}, Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;->setEncryptionContext(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;->setCiphertextBlob(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/cos/xml/crypto/QCLOUDKMS;->decrypt(Lcom/tencentcloudapi/kms/v20190118/models/DecryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/DecryptResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencentcloudapi/kms/v20190118/models/DecryptResponse;->getPlaintext()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/s3/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :catch_0
    const-string p0, "decrypt request set encryption context got json processing exception"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static create(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->doCreate(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->doCreate(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static doCreate(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getKeyWrapScheme()Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;

    move-result-object v2

    invoke-virtual {p4}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->secureCEK(Ljavax/crypto/SecretKey;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/SecuredCEK;

    move-result-object p2

    invoke-static {p0, p1, p3, p5, p2}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->wrap(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/SecuredCEK;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static fromObjectMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->fromObjectMetadata0(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;[JZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static fromObjectMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;[JZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->fromObjectMetadata0(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;[JZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static fromObjectMetadata0(Lcom/tencent/cos/xml/crypto/ObjectMetadata;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Ljava/security/Provider;[JZLcom/tencent/cos/xml/crypto/QCLOUDKMS;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "x-cos-meta-client-side-encryption-key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Content encrypting key not found."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/tencent/cos/xml/s3/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-cos-meta-client-side-encryption-start"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/cos/xml/s3/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    const-string v2, "x-cos-meta-client-side-encryption-matdesc"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-cos-meta-client-side-encryption-wrap-alg"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->matdescFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    if-eqz v3, :cond_2

    new-instance p1, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;

    const-string v2, "kms_cmk_id"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->addDescriptions(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    :goto_1
    move-object v4, p1

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {p1, v9}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a

    goto :goto_1

    :goto_3
    const-string p1, "x-cos-meta-client-side-encryption-cek-alg"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    invoke-static {p1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;)Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v3, :cond_5

    aget-wide v2, p3, v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p3

    if-lez p3, :cond_7

    const-string v2, "x-cos-tag-len"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p3, p0, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported tag length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_5
    if-eqz p4, :cond_9

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->newKeyWrapException()Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_6
    move-object v2, v0

    move-object v3, v8

    move-object v5, p2

    move-object v6, p1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance p3, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    const/4 p4, 0x2

    invoke-virtual {p1, p0, v1, p4, p2}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p3, v9, v0, v8, p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/tencent/cos/xml/crypto/CipherLite;)V

    return-object p3

    :cond_a
    const-string p0, "Unable to retrieve the client encryption materials"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_b
    const-string p0, "Content encrypting key or IV not found."

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private kekMaterialDescAsJson()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getKEKMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static matdescFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static mergeMaterialDescriptions(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/crypto/EncryptionMaterials;",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    instance-of v0, p1, Lcom/tencent/cos/xml/crypto/MaterialsDescriptionProvider;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/crypto/MaterialsDescriptionProvider;

    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static newKeyWrapException()Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const-string v0, "Missing key-wrap for the content-encrypting-key"

    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    return-object v0
.end method

.method private static secureCEK(Ljavax/crypto/SecretKey;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/SecuredCEK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p6}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->mergeMaterialDescriptions(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object p2

    new-instance p3, Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;

    invoke-direct {p3}, Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;->setEncryptionContext(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;->setKeyId(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;->setPlaintext(Ljava/lang/String;)V

    invoke-interface {p5, p3}, Lcom/tencent/cos/xml/crypto/QCLOUDKMS;->encrypt(Lcom/tencentcloudapi/kms/v20190118/models/EncryptRequest;)Lcom/tencentcloudapi/kms/v20190118/models/EncryptResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencentcloudapi/kms/v20190118/models/EncryptResponse;->getCiphertextBlob()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p1, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;

    invoke-direct {p1, p0, p2}, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    return-object p1

    :catch_0
    const-string p0, "encrypt request set encryption context got json processing exception"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p5

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p6

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p2

    if-nez p4, :cond_2

    :try_start_1
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    :goto_1
    const/4 p6, 0x3

    invoke-virtual {p4, p6, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance p1, Lcom/tencent/cos/xml/crypto/SecuredCEK;

    invoke-virtual {p4, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0

    invoke-direct {p1, p0, p2, p5}, Lcom/tencent/cos/xml/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p0, "Unable to encrypt symmetric key"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private usesKMSKey()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/cos/xml/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static wrap(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/SecuredCEK;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    invoke-virtual {p4}, Lcom/tencent/cos/xml/crypto/SecuredCEK;->getMaterialDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/cos/xml/crypto/SecuredCEK;->getEncrypted()[B

    move-result-object v2

    invoke-virtual {p4}, Lcom/tencent/cos/xml/crypto/SecuredCEK;->getKeyWrapAlgorithm()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x1

    invoke-virtual {p2, p0, p1, v3, p3}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/tencent/cos/xml/crypto/CipherLite;)V

    return-object v0
.end method


# virtual methods
.method public getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    return-object p0
.end method

.method public getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/CipherLite;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptedCEK()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getKEKMaterialsDescription()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    return-object p0
.end method

.method public getKeyWrappingAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public recreate(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    move-object v0, p0

    .line 16
    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Material description of the new KEK must differ from the current one"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;

    iget-object v2, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    const-string v3, "kms_cmk_id"

    .line 20
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_1
    move-object v4, v1

    .line 22
    iget-object v2, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v3, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v6

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 24
    iget-object v1, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    .line 25
    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/CipherLite;->getIV()[B

    move-result-object v8

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-static/range {v7 .. v14}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 26
    iget-object v2, v1, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v0, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The new KEK must differ from the original"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "Unable to retrieve the origin encryption materials"

    .line 28
    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    throw v0
.end method

.method public recreate(Ljava/util/Map;Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;",
            "Lcom/tencent/cos/xml/crypto/COSCryptoScheme;",
            "Ljava/security/Provider;",
            "Lcom/tencent/cos/xml/crypto/QCLOUDKMS;",
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

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Material description of the new KEK must differ from the current one"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    new-instance v3, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;

    iget-object v4, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    const-string v5, "kms_cmk_id"

    .line 5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object v3

    if-eqz v3, :cond_5

    :goto_1
    move-object v6, v3

    .line 7
    invoke-interface {v2, v1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v4, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v5, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v8

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/tencent/cos/xml/crypto/EncryptionMaterials;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 10
    iget-object v1, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    .line 11
    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/CipherLite;->getIV()[B

    move-result-object v8

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object v9, v2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-static/range {v7 .. v14}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/tencent/cos/xml/crypto/EncryptionMaterials;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSCryptoScheme;Ljava/security/Provider;Lcom/tencent/cos/xml/crypto/QCLOUDKMS;Lcom/tencent/cos/xml/model/CosXmlRequest;)Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v0, v0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The new KEK must differ from the original"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No material available with the description "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from the encryption material provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    throw v0

    :cond_5
    const-string v0, "Unable to retrieve the origin encryption materials"

    .line 15
    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    throw v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v1

    const-string v2, "x-cos-meta-client-side-encryption-key"

    invoke-static {v1}, Lcom/tencent/cos/xml/s3/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/CipherLite;->getIV()[B

    move-result-object v1

    const-string v2, "x-cos-meta-client-side-encryption-start"

    invoke-static {v1}, Lcom/tencent/cos/xml/s3/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-cos-meta-client-side-encryption-matdesc"

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-cos-meta-client-side-encryption-cek-alg"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "x-cos-tag-len"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "x-cos-meta-client-side-encryption-wrap-alg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Lcom/tencent/cos/xml/crypto/JSONUtils;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toObjectMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)Lcom/tencent/cos/xml/crypto/ObjectMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v0

    const-string v1, "x-cos-meta-client-side-encryption-key"

    invoke-static {v0}, Lcom/tencent/cos/xml/s3/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->cipherLite:Lcom/tencent/cos/xml/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/CipherLite;->getIV()[B

    move-result-object v0

    const-string v1, "x-cos-meta-client-side-encryption-start"

    invoke-static {v0}, Lcom/tencent/cos/xml/s3/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-cos-meta-client-side-encryption-matdesc"

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-cos-meta-client-side-encryption-cek-alg"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "x-cos-tag-len"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "x-cos-meta-client-side-encryption-wrap-alg"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
