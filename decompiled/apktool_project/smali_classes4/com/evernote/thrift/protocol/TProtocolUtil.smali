.class public Lcom/evernote/thrift/protocol/TProtocolUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x7fffffff


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMaxSkipDepth(I)V
    .locals 0

    sput p0, Lcom/evernote/thrift/protocol/TProtocolUtil;->a:I

    return-void
.end method

.method public static skip(Lcom/evernote/thrift/protocol/TProtocol;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/evernote/thrift/protocol/TProtocolUtil;->a:I

    invoke-static {p0, p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    return-void
.end method

.method public static skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    if-lez p2, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object p1

    .line 3
    :goto_0
    iget v1, p1, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TList;->elemType:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_4

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readSetBegin()Lcom/evernote/thrift/protocol/TSet;

    move-result-object p1

    .line 7
    :goto_1
    iget v1, p1, Lcom/evernote/thrift/protocol/TSet;->size:I

    if-ge v0, v1, :cond_1

    .line 8
    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TSet;->elemType:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readSetEnd()V

    goto :goto_4

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object p1

    .line 11
    :goto_2
    iget v1, p1, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v0, v1, :cond_2

    .line 12
    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TMap;->keyType:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    .line 13
    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TMap;->valueType:B

    invoke-static {p0, v1, v2}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto :goto_4

    .line 15
    :pswitch_4
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 16
    :goto_3
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object p1

    .line 17
    iget-byte p1, p1, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    goto :goto_4

    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 19
    invoke-static {p0, p1, v0}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;BI)V

    .line 20
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_3

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readBinary()Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 22
    :pswitch_6
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    goto :goto_4

    .line 23
    :pswitch_7
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    goto :goto_4

    .line 24
    :pswitch_8
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    goto :goto_4

    .line 25
    :pswitch_9
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    goto :goto_4

    .line 26
    :pswitch_a
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readByte()B

    goto :goto_4

    .line 27
    :pswitch_b
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    :goto_4
    return-void

    .line 28
    :cond_4
    new-instance p0, Lcom/evernote/thrift/TException;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
