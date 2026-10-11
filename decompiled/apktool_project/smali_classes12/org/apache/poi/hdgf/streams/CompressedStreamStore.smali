.class public final Lorg/apache/poi/hdgf/streams/CompressedStreamStore;
.super Lorg/apache/poi/hdgf/streams/StreamStore;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x3d09000

.field private static MAX_RECORD_LENGTH:I = 0x3d09000


# instance fields
.field private final blockHeader:[B

.field private blockHeaderInContents:Z

.field private compressedContents:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->decompress([BII)[[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;-><init>([[B)V

    .line 2
    sget v0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->compressedContents:[B

    return-void
.end method

.method private constructor <init>([[B)V
    .locals 3

    const/4 v0, 0x1

    .line 3
    aget-object v0, p1, v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/poi/hdgf/streams/StreamStore;-><init>([BII)V

    .line 4
    aget-object p1, p1, v2

    iput-object p1, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->blockHeader:[B

    return-void
.end method

.method public static decompress([BII)[[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    :try_start_0
    new-instance p0, Lorg/apache/poi/hdgf/HDGFLZW;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/HDGFLZW;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LZWDecompresser;->decompress(Ljava/io/InputStream;)[B

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [[B

    new-array v1, p2, [B

    const/4 v2, 0x0

    aput-object v1, p1, v2

    array-length v3, p0

    sub-int/2addr v3, p2

    new-array v3, v3, [B

    const/4 v4, 0x1

    aput-object v3, p1, v4

    invoke-static {p0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, p1, v4

    array-length v3, v1

    invoke-static {p0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read enough data to decompress: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public _getBlockHeader()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->blockHeader:[B

    return-object p0
.end method

.method public _getCompressedContents()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->compressedContents:[B

    return-object p0
.end method

.method public copyBlockHeaderToContents()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->blockHeaderInContents:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->blockHeader:[B

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/streams/StreamStore;->prependContentsWith([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hdgf/streams/CompressedStreamStore;->blockHeaderInContents:Z

    return-void
.end method
