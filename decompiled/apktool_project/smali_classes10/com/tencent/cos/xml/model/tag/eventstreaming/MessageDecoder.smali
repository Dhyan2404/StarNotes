.class public final Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultDecoderCapacity:I = 0x101400

.field private static incrementDecoderCapacity:I = 0x80000


# instance fields
.field private buf:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->defaultDecoderCapacity:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private byteBufferCopy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private safePut(Ljava/nio/ByteBuffer;[BII)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p4, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    sget v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->incrementDecoderCapacity:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->byteBufferCopy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method


# virtual methods
.method public feed([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->feed([BII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public feed([BII)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->safePut(Ljava/nio/ByteBuffer;[BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->getTotalLength()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Utils;->toIntExact(J)I

    move-result v0

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;->decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;

    move-result-object v1

    .line 10
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 11
    iget-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_1
    return-object p2
.end method

.method public hasPendingContent()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
