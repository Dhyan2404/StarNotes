.class final Lcom/tencent/cos/xml/crypto/COSCryptoScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AES:Ljava/lang/String; = "AES"

.field static final RSA:Ljava/lang/String; = "RSA"

.field private static final srand:Ljava/security/SecureRandom;


# instance fields
.field private final contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

.field private final kwScheme:Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->srand:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->kwScheme:Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;

    return-void
.end method

.method public static from()Lcom/tencent/cos/xml/crypto/COSCryptoScheme;
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;

    sget-object v1, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->AES_CTR:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    new-instance v2, Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;

    invoke-direct {v2}, Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;-><init>(Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;)V

    return-object v0
.end method

.method public static isAesGcm(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->AES_GCM:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getContentCryptoScheme()Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->contentCryptoScheme:Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;

    return-object p0
.end method

.method public getKeyWrapScheme()Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->kwScheme:Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;

    return-object p0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 0

    sget-object p0, Lcom/tencent/cos/xml/crypto/COSCryptoScheme;->srand:Ljava/security/SecureRandom;

    return-object p0
.end method
