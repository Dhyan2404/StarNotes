.class final Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;
.super Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayValue"
.end annotation


# instance fields
.field private codec:Lcom/tencent/cos/xml/s3/Base64Codec;

.field private final value:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;-><init>()V

    const-string v0, "value"

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/ValidationUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    return-void
.end method

.method public synthetic constructor <init>([BLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;-><init>([B)V

    return-void
.end method

.method private toStringDirect([B)Ljava/lang/String;
    .locals 5

    array-length p0, p1

    new-array p0, p0, [C

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    aput-char v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public encodeValue(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->writeBytes(Ljava/io/DataOutputStream;[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getByteArray()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    return-object p0
.end method

.method public getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
    .locals 0

    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE_ARRAY:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;->value:[B

    invoke-static {p0}, Lcom/tencent/cos/xml/s3/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
