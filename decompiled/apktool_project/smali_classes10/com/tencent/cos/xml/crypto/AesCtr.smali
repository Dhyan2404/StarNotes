.class Lcom/tencent/cos/xml/crypto/AesCtr;
.super Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method

.method private computeJ0([B)[B
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/AesCtr;->getBlockSizeInBytes()I

    move-result p0

    new-array v0, p0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    aput-byte p1, v0, p0

    const-wide/16 p0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->incrementBlocks([BJ)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public adjustIV([BJ)[B
    .locals 5

    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/AesCtr;->getBlockSizeInBytes()I

    move-result v0

    int-to-long v1, v0

    div-long v3, p2, v1

    mul-long/2addr v1, v3

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/AesCtr;->computeJ0([B)[B

    move-result-object p0

    invoke-static {p0, v3, v4}, Lcom/tencent/cos/xml/crypto/ContentCryptoScheme;->incrementBlocks([BJ)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting byteOffset to be multiple of 16, but got blockOffset="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", blockSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", byteOffset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getBlockSizeInBytes()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getCipherAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "AES/CTR/NoPadding"

    return-object p0
.end method

.method public getIVLengthInBytes()I
    .locals 0

    const/16 p0, 0x10

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

    const-wide/16 v0, -0x1

    return-wide v0
.end method
