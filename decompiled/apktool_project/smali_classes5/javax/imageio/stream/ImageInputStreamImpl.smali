.class public abstract Ljavax/imageio/stream/ImageInputStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/stream/ImageInputStream;


# static fields
.field private static final BYTE_BUF_LENGTH:I = 0x2000


# instance fields
.field protected bitOffset:I

.field byteBuf:[B

.field protected byteOrder:Ljava/nio/ByteOrder;

.field protected flushedPos:J

.field private isClosed:Z

.field private markBitStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private markByteStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected streamPos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-void
.end method


# virtual methods
.method public final H([B[III)V
    .locals 6

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    :goto_0
    if-ge v1, p4, :cond_1

    aget-byte v0, p1, p0

    add-int/lit8 v2, p0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v5, p3, v1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    aput v0, p2, v5

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v0, p0, 0x3

    aget-byte v0, p1, v0

    add-int/lit8 v2, p0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, p0

    and-int/lit16 v4, v4, 0xff

    add-int v5, p3, v1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    aput v0, p2, v5

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final I([B[JII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    iget-object v0, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-ne v0, v2, :cond_0

    move v0, v6

    :goto_0
    if-ge v6, v1, :cond_1

    aget-byte v2, p1, v0

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x4

    aget-byte v10, p1, v10

    add-int/lit8 v11, v0, 0x5

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v0, 0x6

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v0, 0x7

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    shl-int/lit8 v7, v8, 0x8

    or-int/2addr v2, v7

    or-int/2addr v2, v9

    shl-int/lit8 v7, v10, 0x18

    shl-int/lit8 v8, v11, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v13

    add-int v8, p3, v6

    int-to-long v9, v2

    shl-long/2addr v9, v5

    int-to-long v11, v7

    and-long/2addr v11, v3

    or-long/2addr v9, v11

    aput-wide v9, p2, v8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    if-ge v6, v1, :cond_1

    add-int/lit8 v2, v0, 0x7

    aget-byte v2, p1, v2

    add-int/lit8 v7, v0, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, p1, v10

    add-int/lit8 v11, v0, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v0, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget-byte v13, p1, v0

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    shl-int/lit8 v7, v8, 0x8

    or-int/2addr v2, v7

    or-int/2addr v2, v9

    shl-int/lit8 v7, v10, 0x18

    shl-int/lit8 v8, v11, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v13

    add-int v8, p3, v6

    int-to-long v9, v2

    shl-long/2addr v9, v5

    int-to-long v11, v7

    and-long/2addr v11, v3

    or-long/2addr v9, v11

    aput-wide v9, p2, v8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final M([B[SII)V
    .locals 4

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    :goto_0
    if-ge v1, p4, :cond_1

    aget-byte v0, p1, p0

    add-int/lit8 v2, p0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, p3, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v0, p0, 0x1

    aget-byte v0, p1, v0

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p3, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    return-void
.end method

.method public final f([B[CII)V
    .locals 4

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    :goto_0
    if-ge v1, p4, :cond_1

    aget-byte v0, p1, p0

    add-int/lit8 v2, p0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, p3, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-char v0, v0

    aput-char v0, p2, v3

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v0, p0, 0x1

    aget-byte v0, p1, v0

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p3, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-char v0, v0

    aput-char v0, p2, v3

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->isClosed:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    return-void
.end method

.method public flushBefore(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "pos > getStreamPosition()!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "pos < flushedPos!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBitOffset()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return p0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public getFlushedPosition()J
    .locals 2

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-wide v0
.end method

.method public getStreamPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-wide v0
.end method

.method public isCached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j([B[DII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    iget-object v0, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-ne v0, v2, :cond_0

    move v0, v6

    :goto_0
    if-ge v6, v1, :cond_1

    aget-byte v2, p1, v0

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x4

    aget-byte v10, p1, v10

    add-int/lit8 v11, v0, 0x5

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v0, 0x6

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v0, 0x7

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    shl-int/lit8 v7, v8, 0x8

    or-int/2addr v2, v7

    or-int/2addr v2, v9

    shl-int/lit8 v7, v10, 0x18

    shl-int/lit8 v8, v11, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v13

    int-to-long v8, v2

    shl-long/2addr v8, v5

    int-to-long v10, v7

    and-long/2addr v10, v3

    or-long v7, v8, v10

    add-int v2, p3, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    aput-wide v7, p2, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    if-ge v6, v1, :cond_1

    add-int/lit8 v2, v0, 0x7

    aget-byte v2, p1, v2

    add-int/lit8 v7, v0, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, p1, v10

    add-int/lit8 v11, v0, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v0, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget-byte v13, p1, v0

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    shl-int/lit8 v7, v8, 0x8

    or-int/2addr v2, v7

    or-int/2addr v2, v9

    shl-int/lit8 v7, v10, 0x18

    shl-int/lit8 v8, v11, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v12, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v13

    int-to-long v8, v2

    shl-long/2addr v8, v5

    int-to-long v10, v7

    and-long/2addr v10, v3

    or-long v7, v8, v10

    add-int v2, p3, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    aput-wide v7, p2, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mark()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getBitOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p0

    return p0
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readBit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    rsub-int/lit8 v2, v0, 0x8

    shr-int/2addr v1, v2

    :cond_0
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    and-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readBits(I)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_4

    const/16 v0, 0x40

    if-gt p1, v0, :cond_4

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    return-wide v1

    :cond_0
    iget v3, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    add-int v4, p1, v3

    add-int/2addr v3, p1

    and-int/lit8 v3, v3, 0x7

    :goto_0
    if-lez v4, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x8

    shl-long/2addr v1, v6

    int-to-long v5, v5

    or-long/2addr v1, v5

    add-int/lit8 v4, v4, -0x8

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    :cond_3
    iput v3, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    neg-int p0, v4

    ushr-long/2addr v1, p0

    const-wide/16 v3, -0x1

    sub-int/2addr v0, p1

    ushr-long p0, v3, v0

    and-long/2addr p0, v1

    return-wide p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public readBoolean()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

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

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readBytes(Ljavax/imageio/stream/IIOByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-eqz p1, :cond_0

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Ljavax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p0

    invoke-virtual {p1, v0}, Ljavax/imageio/stream/IIOByteBuffer;->setData([B)V

    invoke-virtual {p1, v1}, Ljavax/imageio/stream/IIOByteBuffer;->setOffset(I)V

    invoke-virtual {p1, p0}, Ljavax/imageio/stream/IIOByteBuffer;->setLength(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buf == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "len < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readChar()C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    :goto_0
    if-lez p3, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > b.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 11
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 12
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 13
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 14
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->f([B[CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > c.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([DII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 31
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 32
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 34
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->j([B[DII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > d.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([FII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 26
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 27
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 29
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->w([B[FII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > f.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 16
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 17
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 18
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 19
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->H([B[III)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > i.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([JII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 21
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 22
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 24
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->I([B[JII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > l.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([SII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 6
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    .line 7
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 9
    iget-object v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    invoke-virtual {p0, v1, p1, p2, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->M([B[SII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off + len > s.length!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte p0, p0, v5

    :goto_0
    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte p0, p0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v6, 0xd

    if-eq v3, v6, :cond_0

    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v6

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v6, v7}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v1

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-ne p0, v2, :cond_0

    int-to-long v6, v0

    shl-long v5, v6, v5

    int-to-long v0, v1

    and-long/2addr v0, v3

    add-long/2addr v5, v0

    return-wide v5

    :cond_0
    int-to-long v1, v1

    shl-long/2addr v1, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Ljavax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, v3

    :goto_0
    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteBuf:[B

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljavax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    :try_start_0
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    throw v1
.end method

.method public readUnsignedByte()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markByteStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    iget-object v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->markBitStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/imageio/stream/ImageInputStreamImpl;->setBitOffset(I)V

    return-void

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Previous marked position has been discarded!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const/4 p1, 0x0

    iput p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "pos < flushedPos!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBitOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitOffset must be betwwen 0 and 7!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public skipBytes(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 2
    invoke-virtual {p0, v2, v3}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    .line 3
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide p0

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public skipBytes(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1, p2}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    .line 6
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public final w([B[FII)V
    .locals 5

    iget-object p0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    :goto_0
    if-ge v1, p4, :cond_1

    aget-byte v0, p1, p0

    add-int/lit8 v2, p0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    add-int v2, p3, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p2, v2

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v0, p0, 0x3

    aget-byte v0, p1, v0

    add-int/lit8 v2, p0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p0, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    add-int v2, p3, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p2, v2

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
