.class Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;-><init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;)V

    return-void
.end method

.method public static decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->readShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;-><init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;)V

    return-object v1
.end method

.method public static encode(Ljava/util/Map$Entry;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    invoke-direct {v0, v1, p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;-><init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;)V

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->encode(Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->writeShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->encode(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Header;->value:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
