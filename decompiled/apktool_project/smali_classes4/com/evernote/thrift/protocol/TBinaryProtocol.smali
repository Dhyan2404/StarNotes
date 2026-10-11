.class public Lcom/evernote/thrift/protocol/TBinaryProtocol;
.super Lcom/evernote/thrift/protocol/TProtocol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;
    }
.end annotation


# static fields
.field protected static final VERSION_1:I = -0x7fff0000

.field protected static final VERSION_MASK:I = -0x10000

.field public static final i:Lcom/evernote/thrift/protocol/TStruct;

.field public static final j:Ljava/nio/charset/Charset;


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field protected checkReadLength_:Z

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:[B

.field protected readLength_:I

.field protected strictRead_:Z

.field protected strictWrite_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    invoke-direct {v0}, Lcom/evernote/thrift/protocol/TStruct;-><init>()V

    sput-object v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->i:Lcom/evernote/thrift/protocol/TStruct;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->j:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/transport/TTransport;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/transport/TTransport;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/evernote/thrift/protocol/TProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    const/4 p1, 0x1

    new-array v0, p1, [B

    .line 4
    iput-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 5
    iput-object v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->b:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 6
    iput-object v2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->c:[B

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 7
    iput-object v3, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->d:[B

    new-array p1, p1, [B

    .line 8
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->e:[B

    new-array p1, v0, [B

    .line 9
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->f:[B

    new-array p1, v1, [B

    .line 10
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->g:[B

    new-array p1, v2, [B

    .line 11
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->h:[B

    .line 12
    iput-boolean p2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    .line 13
    iput-boolean p3, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/thrift/transport/TTransport;->readAll([BII)I

    move-result p0

    return p0
.end method

.method public checkReadLength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readLength_:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readLength_:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/evernote/thrift/TException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message length exceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/evernote/thrift/TException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readBinary()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v2}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    return-object v1

    :cond_0
    new-array v1, v0, [B

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/evernote/thrift/transport/TTransport;->readAll([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v0}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v0}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v2}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v2

    aget-byte v0, v0, v2

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v1}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->e:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a([BII)I

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->e:[B

    aget-byte p0, p0, v2

    return p0
.end method

.method public readBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v0

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/evernote/thrift/transport/TTransport;->readAll([BII)I

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldBegin()Lcom/evernote/thrift/protocol/TField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI16()S

    move-result p0

    :goto_0
    new-instance v1, Lcom/evernote/thrift/protocol/TField;

    const-string v2, ""

    invoke-direct {v1, v2, v0, p0}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    return-object v1
.end method

.method public readFieldEnd()V
    .locals 0

    return-void
.end method

.method public readI16()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->f:[B

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v0}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v2}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->f:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a([BII)I

    move v1, v3

    :goto_0
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public readI32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->g:[B

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v0}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v2}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->g:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a([BII)I

    move v1, v3

    :goto_0
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public readI64()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->h:[B

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v0}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v2}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->h:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a([BII)I

    move v1, v3

    :goto_0
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-long v3, p0

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    add-int/lit8 p0, v1, 0x1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/16 p0, 0x30

    shl-long/2addr v5, p0

    or-long/2addr v3, v5

    add-int/lit8 p0, v1, 0x2

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/16 p0, 0x28

    shl-long/2addr v5, p0

    or-long/2addr v3, v5

    add-int/lit8 p0, v1, 0x3

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/16 p0, 0x20

    shl-long/2addr v5, p0

    or-long/2addr v3, v5

    add-int/lit8 p0, v1, 0x4

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/16 p0, 0x18

    shl-long/2addr v5, p0

    or-long/2addr v3, v5

    add-int/lit8 p0, v1, 0x5

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    const/16 p0, 0x10

    shl-long/2addr v5, p0

    or-long/2addr v3, v5

    add-int/lit8 p0, v1, 0x6

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v5, p0

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 v1, v1, 0x7

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readListBegin()Lcom/evernote/thrift/protocol/TList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    return-object v0
.end method

.method public readListEnd()V
    .locals 0

    return-void
.end method

.method public readMapBegin()Lcom/evernote/thrift/protocol/TMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    new-instance v0, Lcom/evernote/thrift/protocol/TMap;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    return-object v0
.end method

.method public readMapEnd()V
    .locals 0

    return-void
.end method

.method public readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_1

    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    const/high16 v3, -0x7fff0000

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readString()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/evernote/thrift/protocol/TProtocolException;

    const-string v0, "Bad version in readMessageBegin"

    invoke-direct {p0, v1, v0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    if-nez v2, :cond_2

    new-instance v1, Lcom/evernote/thrift/protocol/TMessage;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readStringBody(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    return-object v1

    :cond_2
    new-instance p0, Lcom/evernote/thrift/protocol/TProtocolException;

    const-string v0, "Missing version in readMessageBegin, old client?"

    invoke-direct {p0, v1, v0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public readMessageEnd()V
    .locals 0

    return-void
.end method

.method public readSetBegin()Lcom/evernote/thrift/protocol/TSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    new-instance v0, Lcom/evernote/thrift/protocol/TSet;

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/evernote/thrift/protocol/TSet;-><init>(BI)V

    return-object v0
.end method

.method public readSetEnd()V
    .locals 0

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v0

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    if-lt v1, v0, :cond_0

    sget-object v1, Lcom/evernote/thrift/protocol/TBinaryProtocol;->j:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v2}, Lcom/evernote/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {v3}, Lcom/evernote/thrift/transport/TTransport;->getBufferPosition()I

    move-result v3

    invoke-static {v2, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/transport/TTransport;->consumeBuffer(I)V

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readStringBody(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readStringBody(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    new-array v0, p1, [B

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/evernote/thrift/transport/TTransport;->readAll([BII)I

    sget-object p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->j:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readStructBegin()Lcom/evernote/thrift/protocol/TStruct;
    .locals 0

    sget-object p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->i:Lcom/evernote/thrift/protocol/TStruct;

    return-object p0
.end method

.method public readStructEnd()V
    .locals 0

    return-void
.end method

.method public setReadLength(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->readLength_:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    return-void
.end method

.method public writeBinary([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeBool(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->a:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI64(J)V

    return-void
.end method

.method public writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget-short p1, p1, Lcom/evernote/thrift/protocol/TField;->id:S

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI16(S)V

    return-void
.end method

.method public writeFieldEnd()V
    .locals 0

    return-void
.end method

.method public writeFieldStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    return-void
.end method

.method public writeI16(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->b:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeI32(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->c:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, v2, p1}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeI64(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->d:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x1

    aput-byte v1, v0, v5

    const/16 v1, 0x28

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x2

    aput-byte v1, v0, v5

    const/16 v1, 0x20

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/16 v1, 0x18

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    const/16 v1, 0x10

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    const/16 v1, 0x8

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v0, v6

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v0, v2, v1}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeListBegin(Lcom/evernote/thrift/protocol/TList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TList;->elemType:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget p1, p1, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    return-void
.end method

.method public writeListEnd()V
    .locals 0

    return-void
.end method

.method public writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TMap;->keyType:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TMap;->valueType:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget p1, p1, Lcom/evernote/thrift/protocol/TMap;->size:I

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    return-void
.end method

.method public writeMapEnd()V
    .locals 0

    return-void
.end method

.method public writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/high16 v1, -0x7fff0000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    iget-object v0, p1, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeString(Ljava/lang/String;)V

    iget p1, p1, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeString(Ljava/lang/String;)V

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TMessage;->type:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget p1, p1, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    :goto_0
    return-void
.end method

.method public writeMessageEnd()V
    .locals 0

    return-void
.end method

.method public writeSetBegin(Lcom/evernote/thrift/protocol/TSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-byte v0, p1, Lcom/evernote/thrift/protocol/TSet;->elemType:B

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    iget p1, p1, Lcom/evernote/thrift/protocol/TSet;->size:I

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    return-void
.end method

.method public writeSetEnd()V
    .locals 0

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    sget-object v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;->j:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    iget-object p0, p0, Lcom/evernote/thrift/protocol/TProtocol;->trans_:Lcom/evernote/thrift/transport/TTransport;

    invoke-virtual {p0, v1, v2, v0}, Lcom/evernote/thrift/transport/TTransport;->write([BII)V

    return-void
.end method

.method public writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V
    .locals 0

    return-void
.end method

.method public writeStructEnd()V
    .locals 0

    return-void
.end method
