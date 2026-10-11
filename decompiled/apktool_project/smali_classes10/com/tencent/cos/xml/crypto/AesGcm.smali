.class Lcom/tencent/cos/xml/crypto/AesGcm;
.super Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method public createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object p0, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->AES_CTR:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {p0, p2, p5, p6}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object p2

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getBlockSizeInBytes()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getCipherAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "AES/GCM/NoPadding"

    return-object p0
.end method

.method public getIVLengthInBytes()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getKeyGeneratorAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "AES"

    return-object p0
.end method

.method public getKeyLengthInBits()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public getMaxPlaintextSize()J
    .locals 2

    const-wide v0, 0xfffffffe0L

    return-wide v0
.end method

.method public getSpecificCipherProvider()Ljava/lang/String;
    .locals 0

    const-string p0, "BC"

    return-object p0
.end method

.method public getTagLengthInBits()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 0

    new-instance p0, Lcom/tencent/cos/xml/crypto/GCMCipherLite;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/GCMCipherLite;-><init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V

    return-object p0
.end method
