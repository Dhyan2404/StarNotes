.class Lcom/tencent/cos/xml/crypto/CipherLite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Null:Lcom/tencent/cos/xml/crypto/CipherLite;


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final cipherMode:I

.field private final scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

.field private final secreteKey:Ljavax/crypto/SecretKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/crypto/CipherLite$1;

    invoke-direct {v0}, Lcom/tencent/cos/xml/crypto/CipherLite$1;-><init>()V

    sput-object v0, Lcom/tencent/cos/xml/crypto/CipherLite;->Null:Lcom/tencent/cos/xml/crypto/CipherLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/cos/xml/crypto/CipherLite$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/CipherLite;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 9
    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    .line 10
    iput-object p3, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    .line 11
    iput p4, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    return-void
.end method


# virtual methods
.method public createAuxiliary(J)Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0
.end method

.method public createInverse()Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createUsingIV([B)Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget v2, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0
.end method

.method public doFinal()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public doFinal([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public doFinal([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final getBlockSize()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method public final getCipherAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCipherMode()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    return p0
.end method

.method public final getCipherProvider()Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method

.method public final getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    return-object p0
.end method

.method public final getIV()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public final getSecretKeyAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mark()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recreate()Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->scheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipherMode:I

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mark/reset not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update([BII)[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p0

    return-object p0
.end method
