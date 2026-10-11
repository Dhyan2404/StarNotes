.class public Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# instance fields
.field public e:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/twelvemonkeys/io/FileUtil;->resolve(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public readBoolean()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readByte()B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x10

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readFully([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    iget-object v2, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    add-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    add-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    add-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readLine()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->read()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->read()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->read()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->read()I

    move-result v13

    int-to-long v13, v13

    iget-object v0, v0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    move-wide v15, v1

    int-to-long v0, v0

    const-wide/16 v17, 0x0

    cmp-long v2, v0, v17

    if-ltz v2, :cond_0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    shl-long/2addr v13, v2

    const/16 v17, 0x8

    ushr-long v13, v13, v17

    add-long/2addr v0, v13

    shl-long/2addr v11, v2

    const/16 v13, 0x10

    ushr-long/2addr v11, v13

    add-long/2addr v0, v11

    shl-long/2addr v9, v2

    const/16 v11, 0x18

    ushr-long/2addr v9, v11

    add-long/2addr v0, v9

    shl-long/2addr v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    add-long/2addr v0, v7

    shl-long/2addr v5, v2

    const/16 v7, 0x28

    ushr-long/2addr v5, v7

    add-long/2addr v0, v5

    shl-long/2addr v3, v2

    const/16 v5, 0x30

    ushr-long/2addr v3, v5

    add-long/2addr v0, v3

    shl-long v3, v15, v2

    ushr-long v2, v3, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x10

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x18

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    if-ltz v1, :cond_9

    const/16 v2, 0x8

    shl-int/2addr v0, v2

    add-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_8

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readUnsignedByte()I

    move-result v6

    shr-int/lit8 v7, v6, 0x4

    if-ge v7, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v1, v5

    move v5, v7

    goto :goto_0

    :cond_0
    const/16 v8, 0xc

    const/16 v9, 0x80

    if-eq v7, v8, :cond_5

    const/16 v10, 0xd

    if-ne v7, v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0xe

    if-ne v7, v10, :cond_4

    add-int/lit8 v4, v4, 0x3

    if-gt v4, v0, :cond_3

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readUnsignedByte()I

    move-result v7

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readUnsignedByte()I

    move-result v10

    and-int/lit16 v11, v7, 0xc0

    if-ne v11, v9, :cond_2

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v9, :cond_2

    add-int/lit8 v9, v5, 0x1

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v8

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v7, v10, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    move v5, v9

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x2

    if-gt v4, v0, :cond_7

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    move v5, v8

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUnsignedByte()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public setLength(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public skipBytes(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p0

    return p0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->write(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->write(I)V

    :goto_0
    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit16 v4, v2, 0xff

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->writeLong(J)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x7f

    const/16 v5, 0x7ff

    const/4 v6, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_0

    if-gt v7, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-le v7, v5, :cond_1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xffff

    if-gt v3, v2, :cond_6

    iget-object v2, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v2, v7}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v2, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_3

    if-gt v2, v4, :cond_3

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_3

    :cond_3
    if-le v2, v5, :cond_4

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    shr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    shr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    shr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v3, p0, Lcom/twelvemonkeys/io/LittleEndianRandomAccessFile;->e:Ljava/io/RandomAccessFile;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p0
.end method
