.class final Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;
.super Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteValue"
.end annotation


# instance fields
.field private final value:B


# direct methods
.method private constructor <init>(B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    return-void
.end method

.method public synthetic constructor <init>(BLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;-><init>(B)V

    return-void
.end method


# virtual methods
.method public encodeValue(Ljava/io/DataOutputStream;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;

    iget-byte p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    iget-byte p1, p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getByte()B
    .locals 0

    iget-byte p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    return p0
.end method

.method public getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
    .locals 0

    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-byte p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-byte p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;->value:B

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
