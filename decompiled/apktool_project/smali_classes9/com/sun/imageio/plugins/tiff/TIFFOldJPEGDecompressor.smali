.class public Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;
.source "SourceFile"


# static fields
.field private static final DHT:I = 0xc4

.field private static final DQT:I = 0xdb

.field private static final DRI:I = 0xdd

.field private static final SOF0:I = 0xc0

.field private static final SOS:I = 0xda


# instance fields
.field private JPEGStreamOffset:Ljava/lang/Long;

.field private SOFPosition:I

.field private SOSMarker:[B

.field private isInitialized:Z

.field private subsamplingX:I

.field private subsamplingY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->JPEGStreamOffset:Ljava/lang/Long;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOFPosition:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingX:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingY:I

    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v2, 0x201

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    const/16 v3, 0x144

    invoke-virtual {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x111

    invoke-virtual {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    const/16 v7, 0xd8

    const/16 v8, 0x202

    const/16 v9, 0xff

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v10, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v4, v10, v11}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-wide v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->JPEGStreamOffset:Ljava/lang/Long;

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    const-string v2, "SOI marker detected at start of strip or tile."

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    iput-boolean v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v10

    invoke-virtual {v0, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->JPEGStreamOffset:Ljava/lang/Long;

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    const-string v2, "JPEGInterchangeFormatLength field is missing"

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    iput-boolean v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v12

    aget-wide v14, v3, v5

    cmp-long v4, v10, v14

    if-gez v4, :cond_5

    add-long/2addr v12, v10

    cmp-long v4, v12, v14

    if-lez v4, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->JPEGStreamOffset:Ljava/lang/Long;

    iput-boolean v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    const/16 v4, 0x212

    :try_start_4
    invoke-virtual {v0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsChars()[C

    move-result-object v10

    aget-char v10, v10, v5

    iput v10, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingX:I

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsChars()[C

    move-result-object v4

    aget-char v4, v4, v6

    iput v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingY:I

    :cond_6
    if-eqz v2, :cond_9

    invoke-virtual {v2, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v10

    invoke-virtual {v0, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v2, v12, v14

    if-ltz v2, :cond_8

    add-long v16, v10, v12

    aget-wide v18, v3, v5

    cmp-long v2, v16, v18

    if-gtz v2, :cond_8

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    sub-long v5, v16, v14

    invoke-interface {v2, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v2

    if-ne v2, v9, :cond_7

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v2

    const/16 v5, 0xd9

    if-ne v2, v5, :cond_7

    sub-long/2addr v12, v14

    long-to-int v2, v12

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    goto :goto_1

    :cond_7
    long-to-int v2, v12

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    :goto_1
    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v10, v11}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-object v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    invoke-interface {v2, v5}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    check-cast v2, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    const-string v5, "Incorrect JPEG interchange format: using JPEGInterchangeFormat offset to derive tables."

    invoke-virtual {v2, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    check-cast v2, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    const-string v5, "JPEGInterchangeFormat+JPEGInterchangeFormatLength > offset to first strip or tile."

    invoke-virtual {v2, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    const/4 v10, -0x1

    const/4 v12, 0x2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v15, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v15}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v15

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x207

    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v7

    const/4 v4, 0x0

    :goto_3
    array-length v8, v7

    const-wide/16 v19, -0x1

    if-ge v4, v8, :cond_c

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0xdb

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x43

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x40

    new-array v8, v8, [B

    cmp-long v19, v15, v19

    if-eqz v19, :cond_b

    aget-wide v19, v7, v4

    cmp-long v19, v19, v15

    if-gtz v19, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEGQTables offset for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not in the stream!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    iget-object v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    aget-wide v13, v7, v4

    invoke-interface {v11, v13, v14}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v11, v8}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v12, :cond_14

    const/16 v4, 0x208

    if-nez v8, :cond_d

    move v7, v4

    goto :goto_6

    :cond_d
    const/16 v7, 0x209

    :goto_6
    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v11

    if-ne v7, v4, :cond_e

    const-string v4, "JPEGDCTables"

    goto :goto_7

    :cond_e
    const-string v4, "JPEGACTables"

    :goto_7
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v7

    const/4 v11, 0x0

    :goto_8
    array-length v13, v7

    if-ge v11, v13, :cond_12

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0xc4

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x10

    new-array v14, v13, [B

    cmp-long v21, v15, v19

    if-eqz v21, :cond_10

    aget-wide v21, v7, v11

    cmp-long v21, v21, v15

    if-gtz v21, :cond_f

    goto :goto_9

    :cond_f
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " offset for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not in the stream!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    iget-object v12, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    aget-wide v5, v7, v11

    invoke-interface {v12, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5, v14}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v5, v13, :cond_11

    aget-byte v12, v14, v5

    and-int/2addr v12, v9

    add-int/2addr v6, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_11
    add-int/lit8 v5, v6, 0x13

    int-to-char v5, v5

    ushr-int/lit8 v12, v5, 0x8

    and-int/2addr v12, v9

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v5, v8, 0x4

    or-int/2addr v5, v11

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v14}, Ljava/io/OutputStream;->write([B)V

    new-array v5, v6, [B

    iget-object v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v6, v5}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_12
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x2

    goto/16 :goto_5

    :cond_13
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " field missing!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, -0x40

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    const/16 v5, 0x8

    add-int/2addr v4, v5

    int-to-short v4, v4

    ushr-int/lit8 v5, v4, 0x8

    and-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/2addr v4, v9

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    int-to-short v4, v4

    ushr-int/lit8 v5, v4, 0x8

    and-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/2addr v4, v9

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    int-to-short v4, v4

    ushr-int/lit8 v5, v4, 0x8

    and-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/2addr v4, v9

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x3

    if-ge v5, v6, :cond_17

    add-int/lit8 v6, v5, 0x1

    int-to-byte v7, v6

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz v5, :cond_16

    const/16 v7, 0x11

    goto :goto_c

    :cond_16
    iget v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingX:I

    and-int/lit8 v7, v7, 0xf

    const/4 v11, 0x4

    shl-int/2addr v7, v11

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingY:I

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v7, v11

    int-to-byte v7, v7

    :goto_c
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v5, v6

    goto :goto_b

    :cond_17
    :goto_d
    const/16 v5, 0x203

    invoke-virtual {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsChars()[C

    move-result-object v0

    const/4 v5, 0x0

    aget-char v0, v0, v5

    if-eqz v0, :cond_18

    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, -0x23

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v6, v5

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x4

    int-to-byte v6, v5

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v0, 0x8

    and-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/2addr v0, v9

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    goto :goto_e

    :cond_19
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v2, "JPEGQTables field missing!"

    invoke-direct {v0, v2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_e
    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1c

    iget-object v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    aget-byte v6, v5, v2

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_1b

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    and-int/2addr v5, v9

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1b

    iput v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOFPosition:I

    goto :goto_10

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    :goto_10
    iget v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOFPosition:I

    if-ne v0, v10, :cond_1f

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0xa

    iget v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    const/4 v6, 0x3

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    new-array v2, v2, [B

    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    array-length v5, v0

    array-length v0, v0

    iput v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOFPosition:I

    iput-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    add-int/lit8 v0, v5, 0x1

    aput-byte v10, v2, v5

    add-int/lit8 v5, v0, 0x1

    const/16 v6, -0x40

    aput-byte v6, v2, v0

    iget v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    mul-int/lit8 v6, v0, 0x3

    const/16 v7, 0x8

    add-int/2addr v6, v7

    int-to-short v6, v6

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v11, v6, 0x8

    and-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    add-int/lit8 v5, v7, 0x1

    and-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x8

    aput-byte v7, v2, v5

    iget v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    int-to-short v5, v5

    add-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v11, v5, 0x8

    and-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v2, v6

    add-int/lit8 v6, v7, 0x1

    and-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    iget v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    int-to-short v5, v5

    add-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v11, v5, 0x8

    and-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v2, v6

    add-int/lit8 v6, v7, 0x1

    and-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    add-int/lit8 v5, v6, 0x1

    int-to-byte v7, v0

    aput-byte v7, v2, v6

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1d

    add-int/lit8 v0, v5, 0x1

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x11

    aput-byte v6, v2, v0

    const/4 v0, 0x0

    aput-byte v0, v2, v5

    goto :goto_13

    :cond_1d
    const/16 v6, 0x11

    const/4 v0, 0x0

    :goto_11
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1f

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v11, v0, 0x1

    int-to-byte v12, v11

    aput-byte v12, v2, v5

    add-int/lit8 v5, v7, 0x1

    if-eqz v0, :cond_1e

    move v12, v6

    goto :goto_12

    :cond_1e
    iget v12, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingX:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x4

    shl-int/2addr v12, v13

    iget v13, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->subsamplingY:I

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    :goto_12
    aput-byte v12, v2, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    move v5, v7

    move v0, v11

    goto :goto_11

    :cond_1f
    :goto_13
    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    aget-wide v5, v3, v2

    invoke-interface {v0, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v2, -0x26

    if-ne v0, v9, :cond_20

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v3, 0xda

    if-ne v0, v3, :cond_20

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v3, 0x8

    shl-int/2addr v0, v3

    iget-object v3, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    const/4 v5, 0x0

    aput-byte v10, v3, v5

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    const v2, 0xff00

    and-int/2addr v2, v0

    const/16 v5, 0x8

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    const/4 v5, 0x2

    aput-byte v2, v3, v5

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput-byte v2, v3, v6

    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    sub-int/2addr v0, v5

    const/4 v5, 0x4

    invoke-interface {v2, v3, v5, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    goto :goto_16

    :cond_20
    iget v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    mul-int/lit8 v3, v0, 0x2

    const/16 v5, 0x8

    add-int/2addr v3, v5

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    const/4 v5, 0x0

    aput-byte v10, v3, v5

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    mul-int/lit8 v2, v0, 0x2

    const/4 v5, 0x6

    add-int/2addr v2, v5

    int-to-short v2, v2

    ushr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v9

    int-to-byte v6, v6

    const/4 v7, 0x2

    aput-byte v6, v3, v7

    and-int/2addr v2, v9

    int-to-byte v2, v2

    const/4 v6, 0x3

    aput-byte v2, v3, v6

    int-to-byte v2, v0

    const/4 v6, 0x4

    aput-byte v2, v3, v6

    const/4 v2, 0x5

    const/4 v4, 0x1

    if-ne v0, v4, :cond_21

    aput-byte v4, v3, v2

    const/4 v0, 0x0

    aput-byte v0, v3, v5

    const/4 v0, 0x7

    goto :goto_15

    :cond_21
    const/4 v0, 0x0

    const/4 v3, 0x3

    :goto_14
    if-ge v0, v3, :cond_22

    iget-object v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, 0x1

    int-to-byte v9, v7

    aput-byte v9, v5, v2

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v9, v0, 0x4

    or-int/2addr v0, v9

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    move v0, v7

    goto :goto_14

    :cond_22
    move v0, v2

    :goto_15
    iget-object v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v0

    add-int/lit8 v0, v3, 0x1

    const/16 v6, 0x3f

    aput-byte v6, v2, v3

    aput-byte v5, v2, v0

    :goto_16
    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->isInitialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public decodeRaw([BIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->initialize()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->JPEGStreamOffset:Ljava/lang/Long;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    iget-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p1, p4, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    array-length p4, p1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    array-length v0, v0

    add-int/2addr v0, p4

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {p1, p2, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    int-to-short p1, p1

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOFPosition:I

    add-int/lit8 v3, v2, 0x5

    ushr-int/lit8 v4, p1, 0x8

    const/16 v5, 0xff

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x6

    and-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    int-to-short p1, p1

    add-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x8

    and-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {p1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-array p1, v1, [B

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, p1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    aget-byte v2, p1, p2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    aget-byte v2, p1, p3

    and-int/2addr v2, v5

    const/16 v3, 0xda

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    array-length v3, v2

    invoke-static {v2, p2, v0, p4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;->SOSMarker:[B

    array-length v2, v2

    add-int/2addr p4, v2

    :cond_2
    add-int/lit8 v2, p4, 0x1

    aget-byte v3, p1, p2

    aput-byte v3, v0, p4

    add-int/lit8 p4, v2, 0x1

    aget-byte p1, p1, p3

    aput-byte p1, v0, v2

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, p4, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    sub-int/2addr p1, v1

    add-int/2addr p4, p1

    add-int/lit8 p1, p4, 0x1

    const/4 v1, -0x1

    aput-byte v1, v0, p4

    add-int/lit8 p4, p1, 0x1

    const/16 v1, -0x27

    aput-byte v1, v0, p1

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0, p2, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance p4, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {p4, p1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    invoke-virtual {p1, p4, p3, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    :goto_0
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGParam:Ljavax/imageio/ImageReadParam;

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p1, p3}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p1, p2, p0}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->finalize()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->dispose()V

    return-void
.end method
