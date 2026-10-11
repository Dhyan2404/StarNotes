.class public abstract Lcom/evernote/thrift/protocol/TProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected trans_:Lcom/evernote/thrift/transport/TTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/transport/TTransport;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    return-void
.end method


# virtual methods
.method public getTransport()Lcom/evernote/thrift/transport/TTransport;
    .locals 0

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    return-object p0
.end method

.method public abstract readBinary()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readFieldBegin()Lcom/evernote/thrift/protocol/TField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readFieldEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI16()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readI64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readListBegin()Lcom/evernote/thrift/protocol/TList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readListEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMapBegin()Lcom/evernote/thrift/protocol/TMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMapEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readMessageEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readSetBegin()Lcom/evernote/thrift/protocol/TSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readSetEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readStructBegin()Lcom/evernote/thrift/protocol/TStruct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract readStructEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public writeBinary(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary([BII)V

    return-void
.end method

.method public writeBinary([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary([BII)V

    return-void
.end method

.method public abstract writeBinary([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeBool(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeByte(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeDouble(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeFieldStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI16(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI32(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeI64(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeListBegin(Lcom/evernote/thrift/protocol/TList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeListEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMapEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeMessageEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeSetBegin(Lcom/evernote/thrift/protocol/TSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeSetEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public writeStream(Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    long-to-int p2, p2

    invoke-virtual {p0, p2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/evernote/thrift/TException;

    const-string p2, "Failed to read from stream"

    invoke-direct {p1, p2, p0}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract writeStructEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method
