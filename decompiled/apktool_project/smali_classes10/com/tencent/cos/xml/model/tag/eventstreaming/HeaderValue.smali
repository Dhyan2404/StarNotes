.class public abstract Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$UuidValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$StringValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$LongValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$IntegerValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ShortValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;,
        Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->fromTypeId(B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object v0

    sget-object v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;->$SwitchMap$com$tencent$cos$xml$model$tag$eventstreaming$HeaderType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$UuidValue;->decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$UuidValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;->decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;

    move-result-object p0

    return-object p0

    :pswitch_2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_3
    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->fromByteArray([B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$LongValue;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$LongValue;-><init>(JLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->fromInteger(I)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ShortValue;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ShortValue;-><init>(SLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;-><init>(BLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0

    :pswitch_8
    new-instance p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;-><init>(ZLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;-><init>(ZLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromBoolean(Z)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$BooleanValue;-><init>(ZLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromByte(B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteValue;-><init>(BLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromByteArray([B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ByteArrayValue;-><init>([BLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->fromByteArray([B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromDate(Ljava/util/Date;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;-><init>(Ljava/util/Date;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromInteger(I)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$IntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$IntegerValue;-><init>(ILcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$LongValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$LongValue;-><init>(JLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromShort(S)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ShortValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$ShortValue;-><init>(SLcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$StringValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$StringValue;-><init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromTimestamp(J)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$TimestampValue;-><init>(Ljava/util/Date;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method

.method public static fromUuid(Ljava/util/UUID;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$UuidValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$UuidValue;-><init>(Ljava/util/UUID;Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue$1;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object v0

    iget-byte v0, v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->headerTypeId:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->encodeValue(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public abstract encodeValue(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBoolean()Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getByte()B
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected byte, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteArray()[B
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInteger()I
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected integer, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong()J
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected long, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort()S
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected short, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getTimestamp()J
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected timestamp, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected UUID, but type was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderValue;->getType()Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
