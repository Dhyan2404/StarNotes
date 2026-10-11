.class public Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;
.super Lcom/twelvemonkeys/imageio/ImageReaderBase;
.source "SourceFile"


# static fields
.field public static final h:Z

.field public static final i:[D

.field public static final j:[D


# instance fields
.field public f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

.field public g:Lcom/twelvemonkeys/imageio/metadata/Directory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.twelvemonkeys.imageio.plugins.tiff.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->h:Z

    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->i:[D

    const/4 v0, 0x6

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd322d0e5604189L    # 0.299
        0x3fe2c8b439581062L    # 0.587
        0x3fbd2f1a9fbe76c9L    # 0.114
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x406fe00000000000L    # 255.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
        0x4060000000000000L    # 128.0
        0x406fe00000000000L    # 255.0
    .end array-data
.end method

.method public constructor <init>(Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReaderSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    return-void
.end method

.method public static i(III[[B[[B[[B)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/io/FastByteArrayOutputStream;

    mul-int/lit8 v1, p0, 0x3

    add-int/lit8 v2, v1, 0xc

    array-length v3, p3

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    array-length v3, p3

    const/4 v4, 0x0

    aget-object v5, p3, v4

    array-length v5, v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    array-length v3, p4

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    array-length v3, p4

    aget-object v5, p4, v4

    array-length v5, v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    array-length v3, p5

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    array-length v3, p5

    aget-object v5, p5, v4

    array-length v5, v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    const/16 v3, 0x8

    add-int/2addr v2, v3

    mul-int/lit8 v5, p0, 0x2

    add-int/2addr v2, v5

    invoke-direct {v0, v2}, Lcom/twelvemonkeys/io/FastByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v6, 0xffd8

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const v6, 0xffc0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    move p1, v4

    :goto_0
    if-ge p1, p0, :cond_1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_0

    const/16 p2, 0x22

    goto :goto_1

    :cond_0
    const/16 p2, 0x11

    :goto_1
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_2
    array-length p2, p3

    if-ge p1, p2, :cond_2

    aget-object p2, p3, p1

    const v1, 0xffdb

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, p2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_3
    array-length p2, p4

    const p3, 0xffc4

    if-ge p1, p2, :cond_3

    aget-object p2, p4, p1

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length p3, p2

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    move p1, v4

    :goto_4
    array-length p2, p5

    if-ge p1, p2, :cond_4

    aget-object p2, p5, p1

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length p4, p2

    add-int/lit8 p4, p4, 0x3

    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    and-int/lit8 p4, p1, 0xf

    add-int/lit8 p4, p4, 0x10

    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    const p1, 0xffda

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    move p1, v4

    :goto_5
    if-ge p1, p0, :cond_6

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_5

    move p2, p1

    goto :goto_6

    :cond_5
    and-int/lit8 p2, p1, 0xf

    add-int/lit8 p2, p2, 0x10

    :goto_6
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/FastByteArrayOutputStream;->createInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static l()V
    .locals 4

    invoke-static {}, Ljavax/imageio/spi/IIORegistry;->getDefaultInstance()Ljavax/imageio/spi/IIORegistry;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$c;

    invoke-direct {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$c;-><init>()V

    const/4 v2, 0x0

    const-class v3, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0, v3, v1, v2}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0, v2}, Ljavax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " ms"

    const-string v3, " can\'t be read:"

    const/4 v4, 0x0

    invoke-static {v4}, Ljavax/imageio/ImageIO;->setUseCache(Z)V

    array-length v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v0, v1, v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    move v15, v4

    move/from16 v19, v5

    goto/16 :goto_e

    :cond_0
    invoke-static {}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->l()V

    invoke-static {v8}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No reader for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/imageio/ImageReader;

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading using: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v10, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$a;

    invoke-direct {v10, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljavax/imageio/ImageReader;->addIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader$b;-><init>()V

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V

    invoke-virtual {v9, v8}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v9}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljavax/imageio/ImageReader;->getNumImages(Z)I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v9, v13, v10}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :try_start_2
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read time: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "image: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v1, Ljava/awt/image/ColorConvertOp;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/RenderingHints;)V

    new-instance v11, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move/from16 v19, v5

    :try_start_4
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v10

    const/4 v10, 0x2

    :try_start_5
    invoke-direct {v11, v4, v5, v10}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1, v0, v11}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    move/from16 v19, v5

    move-object/from16 v20, v10

    :goto_3
    const-string v1, "Image: %s [%d x %d]"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/4 v11, 0x0

    :try_start_6
    aput-object v10, v5, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v9, v13}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/4 v11, 0x1

    :try_start_8
    aput-object v10, v5, v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v9, v13}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v9, v1}, Ljavax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v0
    :try_end_a
    .catch Ljavax/imageio/IIOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v0, :cond_3

    :try_start_b
    invoke-virtual {v9, v13, v11}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object v1

    const-string v5, "Thumbnail: %s [%d x %d]"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_b
    .catch Ljavax/imageio/IIOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v15, 0x0

    :try_start_c
    aput-object v14, v10, v15

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_c
    .catch Ljavax/imageio/IIOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/16 v16, 0x1

    :try_start_d
    aput-object v14, v10, v16

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x2

    aput-object v14, v10, v17

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    :try_end_d
    .catch Ljavax/imageio/IIOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v15, 0x0

    goto :goto_5

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x1

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move v15, v1

    goto :goto_9

    :catch_3
    move-exception v0

    move v15, v1

    :goto_5
    const/16 v16, 0x1

    :goto_6
    :try_start_e
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read thumbnails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move/from16 v16, v11

    const/4 v15, 0x0

    goto :goto_a

    :catchall_5
    move-exception v0

    move v15, v11

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move/from16 v19, v5

    :goto_7
    move-object/from16 v20, v10

    :goto_8
    const/4 v15, 0x0

    goto :goto_9

    :catchall_8
    move-exception v0

    move v15, v4

    move/from16 v19, v5

    move-object/from16 v20, v10

    :goto_9
    const/16 v16, 0x1

    goto :goto_a

    :catchall_9
    move-exception v0

    move v15, v4

    move/from16 v19, v5

    move-object/from16 v20, v10

    move/from16 v16, v11

    :goto_a
    :try_start_f
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v4, v15

    move/from16 v11, v16

    move/from16 v5, v19

    move-object/from16 v10, v20

    goto/16 :goto_2

    :catchall_a
    move-exception v0

    goto :goto_d

    :cond_4
    move v15, v4

    move/from16 v19, v5

    :goto_c
    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->close()V

    goto :goto_e

    :catchall_b
    move-exception v0

    move v15, v4

    move/from16 v19, v5

    :goto_d
    :try_start_10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_c

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move v4, v15

    move/from16 v5, v19

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw v0

    :cond_5
    return-void
.end method

.method public static showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing TIFF tag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public final B(ILjavax/imageio/metadata/IIOMetadata;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p2, v0}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "ColorSpaceType"

    invoke-virtual {p2, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p2, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "YCbCr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    :cond_1
    const-string v0, "RGB"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    :cond_2
    const-string v0, "GRAY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_4

    :cond_3
    return p0

    :cond_4
    sget-boolean p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->h:Z

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible JPEG CS/PhotometricInterpretation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return v1

    :cond_6
    return p0
.end method

.method public final C(I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-instance p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    sget-object v3, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D65:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D50:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    :goto_0
    invoke-direct {p0, v3}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;-><init>(Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;)V

    new-array v2, v2, [F

    move v3, v0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_9

    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    if-ne p1, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p2, v5

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p2, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    :goto_2
    int-to-float v6, v6

    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->toRGB(FFF[F)V

    aget v4, v2, v0

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    aget v5, v2, v5

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    aget v5, v2, v5

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_2
    const/16 p1, 0x211

    const-string v3, "YCbCrCoefficients"

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->t(ILjava/lang/String;ZI)[D

    move-result-object p1

    const/16 v2, 0x214

    const-string v3, "ReferenceBlackWhite"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->t(ILjava/lang/String;ZI)[D

    move-result-object p0

    if-eqz p1, :cond_3

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->i:[D

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p0, :cond_7

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j:[D

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    sget-object p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->i:[D

    :cond_5
    if-eqz p0, :cond_6

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j:[D

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x0

    :cond_6
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_9

    invoke-static {p2, p2, p1, p0, v0}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->convertYCbCr2RGB([B[B[D[DI)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_7
    :goto_4
    array-length p0, p2

    if-ge v0, p0, :cond_9

    invoke-static {p2, p2, v0}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->convertYCbCr2RGB([B[BI)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_8
    :goto_5
    array-length p0, p2

    if-ge v0, p0, :cond_9

    aget-byte p0, p2, v0

    not-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final D(I[F)V
    .locals 0

    return-void
.end method

.method public final E(I[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_1

    aget p1, p2, p0

    not-int p1, p1

    aput p1, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final F(I[S)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-instance p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D65:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D50:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    :goto_0
    invoke-direct {p0, v1}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;-><init>(Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;)V

    new-array v1, v2, [F

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    const v3, 0x477fff00    # 65535.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x477f0000    # 65280.0f

    :goto_1
    move v4, v0

    :goto_2
    array-length v5, p2

    if-ge v4, v5, :cond_7

    aget-short v5, p2, v4

    const v6, 0xffff

    and-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    div-float/2addr v5, v3

    const/high16 v7, 0x43800000    # 256.0f

    if-ne p1, v2, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget-short v6, p2, v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-int/lit8 v8, v4, 0x2

    aget-short v8, p2, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v4, 0x1

    aget-short v8, p2, v8

    and-int/2addr v8, v6

    add-int/lit16 v8, v8, -0x8000

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-int/lit8 v9, v4, 0x2

    aget-short v9, p2, v9

    and-int/2addr v6, v9

    add-int/lit16 v6, v6, -0x8000

    int-to-float v6, v6

    div-float/2addr v6, v7

    move v10, v8

    move v8, v6

    move v6, v10

    :goto_3
    invoke-virtual {p0, v5, v6, v8, v1}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->toRGB(FFF[F)V

    aget v5, v1, v0

    const v6, 0x43808000    # 257.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, p2, v4

    add-int/lit8 v5, v4, 0x1

    const/4 v7, 0x1

    aget v7, v1, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, p2, v5

    add-int/lit8 v5, v4, 0x2

    const/4 v7, 0x2

    aget v7, v1, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    int-to-short v6, v6

    aput-short v6, p2, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    :cond_3
    const/16 p1, 0x211

    const-string v3, "YCbCrCoefficients"

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->t(ILjava/lang/String;ZI)[D

    move-result-object p1

    const/16 v2, 0x214

    const-string v3, "ReferenceBlackWhite"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->t(ILjava/lang/String;ZI)[D

    move-result-object v1

    if-nez p1, :cond_4

    sget-object p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->i:[D

    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j:[D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p2

    move-object v5, p1

    move-object v6, v1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f([S[S[D[DI)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_6
    :goto_5
    array-length p0, p2

    if-ge v0, p0, :cond_7

    aget-short p0, p2, v0

    not-int p0, p0

    int-to-short p0, p0

    aput-short p0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Ljava/io/DataInput;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    array-length p0, p2

    invoke-interface {p1, p2, v0, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([FII)V

    goto :goto_1

    :cond_0
    :goto_0
    array-length p0, p2

    if-ge v0, p0, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p0

    aput p0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final H(Ljava/io/DataInput;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    array-length p0, p2

    invoke-interface {p1, p2, v0, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    goto :goto_1

    :cond_0
    :goto_0
    array-length p0, p2

    if-ge v0, p0, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    aput p0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final I(Ljava/io/DataInput;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    array-length p0, p2

    invoke-interface {p1, p2, v0, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([SII)V

    goto :goto_1

    :cond_0
    :goto_0
    array-length p0, p2

    if-ge v0, p0, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result p0

    aput-short p0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final J(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->readMetadata()V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {v0, p1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public final K(Ljava/awt/image/Raster;Ljava/awt/Rectangle;IIIIILjava/awt/image/WritableRaster;IIIILjava/io/DataInput;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    move-object/from16 v7, p13

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v11

    if-eqz v11, :cond_14

    if-eq v11, v10, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_d

    const/4 v12, 0x3

    if-eq v11, v12, :cond_7

    const/4 v8, 0x4

    if-eq v11, v8, :cond_1

    goto/16 :goto_13

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v8

    check-cast v8, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {v8, v3}, Ljava/awt/image/DataBufferFloat;->getData(I)[F

    move-result-object v8

    if-eqz v9, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v12

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v18

    move-object/from16 v11, p8

    invoke-virtual/range {v11 .. v18}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object/from16 v11, p8

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v19

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    :goto_2
    move/from16 v9, p10

    :goto_3
    add-int v12, p10, p12

    if-ge v9, v12, :cond_1c

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    iget v13, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v12, v13

    if-lt v9, v12, :cond_4

    goto/16 :goto_13

    :cond_4
    invoke-virtual {v0, v7, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->G(Ljava/io/DataInput;[F)V

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    if-lt v9, v12, :cond_6

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->b([F)V

    invoke-virtual {v0, v5, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->D(I[F)V

    if-eq v2, v10, :cond_5

    iget v12, v1, Ljava/awt/Rectangle;->x:I

    div-int/2addr v12, v2

    mul-int/2addr v12, v4

    :goto_4
    iget v13, v1, Ljava/awt/Rectangle;->x:I

    iget v14, v1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v13, v14

    div-int/2addr v13, v2

    mul-int/2addr v13, v4

    if-ge v12, v13, :cond_5

    mul-int v13, v12, v2

    invoke-static {v8, v13, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v4

    goto :goto_4

    :cond_5
    iget v12, v1, Ljava/awt/Rectangle;->y:I

    sub-int v12, v9, v12

    invoke-virtual {v11, v6, v12, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    check-cast v8, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v8, v3}, Ljava/awt/image/DataBufferInt;->getData(I)[I

    move-result-object v8

    if-eqz v9, :cond_8

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v12

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v18

    move-object/from16 v11, p8

    invoke-virtual/range {v11 .. v18}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v11

    goto :goto_5

    :cond_8
    move-object/from16 v11, p8

    :goto_5
    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v19

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object/from16 v3, p1

    :goto_6
    move/from16 v9, p10

    :goto_7
    add-int v12, p10, p12

    if-ge v9, v12, :cond_1c

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    iget v13, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v12, v13

    if-lt v9, v12, :cond_a

    goto/16 :goto_13

    :cond_a
    invoke-virtual {v0, v7, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->H(Ljava/io/DataInput;[I)V

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    if-lt v9, v12, :cond_c

    invoke-virtual {v0, v5, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->E(I[I)V

    if-eq v2, v10, :cond_b

    iget v12, v1, Ljava/awt/Rectangle;->x:I

    div-int/2addr v12, v2

    mul-int/2addr v12, v4

    :goto_8
    iget v13, v1, Ljava/awt/Rectangle;->x:I

    add-int v13, v13, p11

    div-int/2addr v13, v2

    mul-int/2addr v13, v4

    if-ge v12, v13, :cond_b

    mul-int v13, v12, v2

    invoke-static {v8, v13, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v4

    goto :goto_8

    :cond_b
    div-int v12, v6, v2

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    sub-int v13, v9, v13

    div-int v13, v13, p4

    invoke-virtual {v11, v12, v13, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v8}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v11

    if-ne v11, v10, :cond_e

    check-cast v8, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {v8, v3}, Ljava/awt/image/DataBufferUShort;->getData(I)[S

    move-result-object v8

    goto :goto_9

    :cond_e
    check-cast v8, Ljava/awt/image/DataBufferShort;

    invoke-virtual {v8, v3}, Ljava/awt/image/DataBufferShort;->getData(I)[S

    move-result-object v8

    :goto_9
    if-eqz v9, :cond_f

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v12

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v18

    move-object/from16 v11, p8

    invoke-virtual/range {v11 .. v18}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v11

    goto :goto_a

    :cond_f
    move-object/from16 v11, p8

    :goto_a
    if-eqz v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v19

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    goto :goto_b

    :cond_10
    move-object/from16 v3, p1

    :goto_b
    move/from16 v9, p10

    :goto_c
    add-int v12, p10, p12

    if-ge v9, v12, :cond_1c

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    iget v13, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v12, v13

    if-lt v9, v12, :cond_11

    goto/16 :goto_13

    :cond_11
    invoke-virtual {v0, v7, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->I(Ljava/io/DataInput;[S)V

    iget v12, v1, Ljava/awt/Rectangle;->y:I

    if-lt v9, v12, :cond_13

    invoke-virtual {v0, v5, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->F(I[S)V

    if-eq v2, v10, :cond_12

    iget v12, v1, Ljava/awt/Rectangle;->x:I

    div-int/2addr v12, v2

    mul-int/2addr v12, v4

    :goto_d
    iget v13, v1, Ljava/awt/Rectangle;->x:I

    add-int v13, v13, p11

    div-int/2addr v13, v2

    mul-int/2addr v13, v4

    if-ge v12, v13, :cond_12

    mul-int v13, v12, v2

    invoke-static {v8, v13, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v4

    goto :goto_d

    :cond_12
    div-int v12, v6, v2

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    sub-int v13, v9, v13

    div-int v13, v13, p4

    invoke-virtual {v11, v12, v13, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v11

    check-cast v11, Ljava/awt/image/BandedSampleModel;

    invoke-virtual {v11}, Ljava/awt/image/ComponentSampleModel;->getBankIndices()[I

    move-result-object v11

    aget v11, v11, v3

    goto :goto_e

    :cond_15
    move v11, v3

    :goto_e
    check-cast v8, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v8, v11}, Ljava/awt/image/DataBufferByte;->getData(I)[B

    move-result-object v8

    if-eqz v9, :cond_16

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v12

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    invoke-virtual/range {p8 .. p8}, Ljava/awt/image/Raster;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v18

    move-object/from16 v11, p8

    invoke-virtual/range {v11 .. v18}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v11

    goto :goto_f

    :cond_16
    move-object/from16 v11, p8

    :goto_f
    if-eqz v9, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v19

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    goto :goto_10

    :cond_17
    move-object/from16 v3, p1

    :goto_10
    move/from16 v12, p10

    :goto_11
    add-int v13, p10, p12

    if-ge v12, v13, :cond_1c

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    iget v14, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v13, v14

    if-lt v12, v13, :cond_18

    goto :goto_13

    :cond_18
    invoke-interface {v7, v8}, Ljava/io/DataInput;->readFully([B)V

    rem-int v13, v12, p4

    if-nez v13, :cond_1b

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    if-lt v12, v13, :cond_1b

    if-nez v9, :cond_19

    invoke-virtual {v0, v5, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->C(I[B)V

    :cond_19
    if-eq v2, v10, :cond_1a

    iget v13, v1, Ljava/awt/Rectangle;->x:I

    div-int/2addr v13, v2

    mul-int/2addr v13, v4

    :goto_12
    iget v14, v1, Ljava/awt/Rectangle;->x:I

    add-int v14, v14, p11

    div-int/2addr v14, v2

    mul-int/2addr v14, v4

    if-ge v13, v14, :cond_1a

    mul-int v14, v13, v2

    invoke-static {v8, v14, v8, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v4

    goto :goto_12

    :cond_1a
    div-int v13, v6, v2

    iget v14, v1, Ljava/awt/Rectangle;->y:I

    sub-int v14, v12, v14

    div-int v14, v14, p4

    invoke-virtual {v11, v13, v14, v3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_1c
    :goto_13
    return-void
.end method

.method public final b([F)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget v0, p1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    aput v1, p1, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(I)S
    .locals 0

    const p0, 0xffff

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public final d(Ljava/awt/image/Raster;Ljava/awt/Rectangle;[II)Ljava/awt/image/Raster;
    .locals 11

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, p0, v1, v0, v2}, Ljava/awt/Rectangle;->contains(IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    if-ne p4, v2, :cond_0

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    iget p0, p2, Ljava/awt/Rectangle;->x:I

    add-int/2addr p0, p4

    sub-int/2addr p0, v2

    div-int v4, p0, p4

    const/4 v5, 0x0

    iget p0, p2, Ljava/awt/Rectangle;->width:I

    add-int/2addr p0, p4

    sub-int/2addr p0, v2

    div-int v6, p0, p4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/awt/image/WritableRaster;Ljava/awt/Rectangle;[I)Ljava/awt/image/WritableRaster;
    .locals 8

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    invoke-virtual {p2, p0, v0, v1, v2}, Ljava/awt/Rectangle;->contains(IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    iget v1, p2, Ljava/awt/Rectangle;->x:I

    iget v2, p2, Ljava/awt/Rectangle;->y:I

    iget v3, p2, Ljava/awt/Rectangle;->width:I

    iget v4, p2, Ljava/awt/Rectangle;->height:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final f([S[S[D[DI)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0xffff

    if-nez p4, :cond_0

    aget-short v5, p1, p5

    and-int/2addr v5, v4

    int-to-double v5, v5

    add-int/lit8 v7, p5, 0x1

    aget-short v7, p1, v7

    and-int/2addr v7, v4

    add-int/lit16 v7, v7, -0x8000

    int-to-double v7, v7

    add-int/lit8 v9, p5, 0x2

    aget-short v9, p1, v9

    and-int/2addr v4, v9

    add-int/lit16 v4, v4, -0x8000

    int-to-double v9, v4

    goto :goto_0

    :cond_0
    aget-short v5, p1, p5

    and-int/2addr v5, v4

    int-to-double v5, v5

    aget-wide v7, p4, v1

    sub-double/2addr v5, v7

    const-wide v9, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v5, v9

    aget-wide v9, p4, v3

    sub-double/2addr v9, v7

    div-double/2addr v5, v9

    add-int/lit8 v7, p5, 0x1

    aget-short v7, p1, v7

    and-int/2addr v7, v4

    int-to-double v7, v7

    aget-wide v9, p4, v2

    sub-double/2addr v7, v9

    const-wide v11, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v7, v11

    const/4 v13, 0x3

    aget-wide v13, p4, v13

    sub-double/2addr v13, v9

    div-double/2addr v7, v13

    add-int/lit8 v9, p5, 0x2

    aget-short v9, p1, v9

    and-int/2addr v4, v9

    int-to-double v9, v4

    const/4 v4, 0x4

    aget-wide v13, p4, v4

    sub-double/2addr v9, v13

    mul-double/2addr v9, v11

    const/4 v4, 0x5

    aget-wide v11, p4, v4

    sub-double/2addr v11, v13

    div-double/2addr v9, v11

    :goto_0
    aget-wide v11, p3, v1

    aget-wide v3, p3, v3

    aget-wide v13, p3, v2

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v17, v11, v15

    sub-double v17, v15, v17

    mul-double v9, v9, v17

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v1, v9

    mul-double v9, v13, v15

    sub-double/2addr v15, v9

    mul-double/2addr v7, v15

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-double v8, v1

    mul-double/2addr v11, v8

    sub-double/2addr v5, v11

    int-to-double v8, v7

    mul-double/2addr v13, v8

    sub-double/2addr v5, v13

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->c(I)S

    move-result v1

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->c(I)S

    move-result v3

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->c(I)S

    move-result v0

    aput-short v1, p2, p5

    add-int/lit8 v1, p5, 0x1

    aput-short v3, p2, v1

    add-int/lit8 v1, p5, 0x2

    aput-short v0, p2, v1

    return-void
.end method

.method public final g(IIILjava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0x8

    const/16 p2, 0x400

    if-eq p1, p0, :cond_2

    const p0, 0x8005

    if-eq p1, p0, :cond_1

    const p0, 0x80b2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TIFF compression: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/twelvemonkeys/io/enc/DecoderStream;

    new-instance p1, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;

    invoke-direct {p1}, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;-><init>()V

    invoke-direct {p0, p4, p1, p2}, Lcom/twelvemonkeys/io/enc/DecoderStream;-><init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/enc/Decoder;I)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p4, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/twelvemonkeys/io/enc/DecoderStream;

    invoke-static {p4}, Lcom/sunia/HTREnginev2/qui;->g(Ljava/io/InputStream;)Z

    move-result p1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/qui;->c(Z)Lcom/twelvemonkeys/io/enc/Decoder;

    move-result-object p1

    mul-int/2addr p2, p3

    const/16 p3, 0x1000

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p4, p1, p2}, Lcom/twelvemonkeys/io/enc/DecoderStream;-><init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/enc/Decoder;I)V

    return-object p0

    :cond_4
    new-instance p3, Lcom/sunia/HTREnginev2/z00;

    const/16 v1, 0x10a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->n(I)J

    move-result-wide v5

    move-object v0, p3

    move-object v1, p4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/z00;-><init>(Ljava/io/InputStream;IIIJ)V

    return-object p3

    :cond_5
    return-object p4
.end method

.method public getHeight(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    const/16 p1, 0x101

    const-string v0, "ImageHeight"

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->u(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/twelvemonkeys/imageio/metadata/Directory;)V

    return-object p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Ljavax/imageio/ImageTypeSpecifier;->getBitsPerBand(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {v0}, Ljavax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Ljavax/imageio/ImageTypeSpecifier;->getBitsPerBand(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Ljavax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x7

    invoke-static {v0}, Ljavax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getNumImages(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->readMetadata()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result p0

    return p0
.end method

.method public getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->s()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x11c

    invoke-virtual {v0, v4, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->r()I

    move-result v5

    const/16 v6, 0x115

    invoke-virtual {v0, v6, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->m()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->o(II)I

    move-result v11

    invoke-virtual {v0, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->q(I)I

    move-result v1

    const/16 v8, 0x152

    const-string v9, "ExtraSamples"

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v8

    if-nez v8, :cond_0

    if-le v6, v1, :cond_0

    sub-int v8, v6, v1

    new-array v8, v8, [J

    const-wide/16 v12, 0x2

    aput-wide v12, v8, v10

    :cond_0
    if-eqz v8, :cond_1

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    if-eqz v9, :cond_2

    aget-wide v12, v8, v10

    const-wide/16 v14, 0x1

    cmp-long v8, v12, v14

    if-nez v8, :cond_2

    move v15, v2

    goto :goto_1

    :cond_2
    move v15, v10

    :goto_1
    add-int/2addr v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->p()Ljava/awt/color/ICC_Profile;

    move-result-object v8

    const v9, 0x8023

    if-eq v5, v9, :cond_31

    const v9, 0x884c

    if-eq v5, v9, :cond_31

    const/4 v9, 0x5

    const/16 v12, 0x3e8

    const/4 v13, 0x4

    const/4 v14, 0x2

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TIFF PhotometricInterpretation value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    if-ne v4, v2, :cond_3

    filled-new-array {v10, v2, v14}, [I

    move-result-object v1

    invoke-static {v0, v1, v11, v10, v10}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported PlanarConfiguration for Lab color TIFF (expected 1): %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v5, 0x14c

    invoke-virtual {v0, v5, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v3

    const/16 v5, 0x14e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v5

    if-eq v3, v2, :cond_6

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v12

    if-eq v12, v5, :cond_6

    :cond_4
    new-instance v0, Ljavax/imageio/IIOException;

    new-array v1, v14, [Ljava/lang/Object;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, "null"

    :goto_2
    aput-object v3, v1, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Embedded ICC color profile for Photometric Separated is missing or is incompatible with image data: %s != NumberOfInks (%s)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v8, :cond_7

    if-ne v3, v2, :cond_7

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v3

    const/16 v5, 0x9

    if-eq v3, v5, :cond_7

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Embedded ICC color profile (type %s), is incompatible with image data (CMYK/type 9). Ignoring profile."

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_7
    if-nez v8, :cond_8

    const/16 v0, 0x1389

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->getColorSpace(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v8}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v0

    :goto_3
    move-object v8, v0

    if-eq v1, v13, :cond_9

    if-ne v1, v9, :cond_d

    const/16 v0, 0x8

    const/16 v1, 0x10

    goto :goto_4

    :cond_9
    const/16 v0, 0x8

    const/16 v1, 0x10

    if-eq v7, v0, :cond_a

    if-ne v7, v1, :cond_b

    :cond_a
    if-eq v4, v2, :cond_10

    if-eq v4, v14, :cond_f

    :cond_b
    :goto_4
    if-eq v7, v0, :cond_c

    if-ne v7, v1, :cond_d

    :cond_c
    if-eq v4, v2, :cond_e

    if-ne v4, v14, :cond_d

    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0, v13}, [I

    move-result-object v9

    filled-new-array {v10, v10, v10, v10, v10}, [I

    move-result-object v10

    const/4 v12, 0x1

    move v13, v15

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported SamplesPerPixel/BitsPerSample combination for Separated TIFF (expected 4/8, 4/16, 5/8 or 5/16): %d/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0, v13}, [I

    move-result-object v0

    invoke-static {v8, v0, v11, v2, v15}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0}, [I

    move-result-object v9

    filled-new-array {v10, v10, v10, v10}, [I

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0}, [I

    move-result-object v0

    invoke-static {v8, v0, v11, v10, v10}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :pswitch_2
    if-ne v6, v2, :cond_13

    if-lez v7, :cond_12

    const/16 v1, 0x10

    if-gt v7, v1, :cond_12

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0, v7, v11, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->h(II[I)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromIndexColorModel(Ljava/awt/image/IndexColorModel;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Missing ColorMap for Palette TIFF"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad BitsPerSample value for Palette TIFF (expected <= 16): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad SamplesPerPixel value for Palette TIFF (expected 1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v3

    if-eq v3, v9, :cond_14

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Embedded ICC color profile (type %s), is incompatible with image data (RGB/type 5). Ignoring profile."

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_14
    if-nez v8, :cond_15

    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_5

    :cond_15
    invoke-static {v8}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v0

    :goto_5
    move-object v12, v0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_16

    if-ne v1, v13, :cond_1b

    const/16 v0, 0x8

    const/16 v3, 0x10

    const/16 v5, 0x20

    goto :goto_6

    :cond_16
    const/16 v0, 0x8

    const/16 v3, 0x10

    const/16 v5, 0x20

    if-eq v7, v0, :cond_17

    if-eq v7, v3, :cond_17

    if-ne v7, v5, :cond_18

    :cond_17
    if-eq v4, v2, :cond_1e

    if-eq v4, v14, :cond_1d

    :cond_18
    :goto_6
    if-eq v7, v0, :cond_1a

    if-eq v7, v3, :cond_1a

    if-ne v7, v5, :cond_19

    goto :goto_7

    :cond_19
    if-ne v1, v13, :cond_1b

    if-ne v7, v13, :cond_1b

    const v13, 0xf000

    const/16 v14, 0xf00

    const/16 v0, 0xf0

    const/16 v16, 0xf

    const/16 v17, 0x1

    move v3, v15

    move v15, v0

    move/from16 v18, v3

    invoke-static/range {v12 .. v18}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_7
    move v3, v15

    if-eq v4, v2, :cond_1c

    if-ne v4, v14, :cond_1b

    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0}, [I

    move-result-object v9

    filled-new-array {v10, v10, v10, v10}, [I

    move-result-object v10

    const/4 v0, 0x1

    move-object v8, v12

    move v12, v0

    move v13, v3

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported SamplesPerPixel/BitsPerSample combination for RGB TIFF (expected 3/8, 4/8, 3/16 or 4/16): %d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x3

    filled-new-array {v10, v2, v14, v0}, [I

    move-result-object v0

    invoke-static {v12, v0, v11, v2, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1d
    filled-new-array {v10, v2, v14}, [I

    move-result-object v9

    filled-new-array {v10, v10, v10}, [I

    move-result-object v10

    const/4 v0, 0x0

    const/4 v13, 0x0

    move-object v8, v12

    move v12, v0

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1e
    filled-new-array {v10, v2, v14}, [I

    move-result-object v0

    invoke-static {v12, v0, v11, v10, v10}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :pswitch_4
    move v3, v15

    const-string v5, "Embedded ICC color profile (type %s), is incompatible with image data (GRAY/type 6). Ignoring profile."

    const/4 v9, 0x6

    const/16 v12, 0x3eb

    if-eq v1, v2, :cond_28

    if-ne v1, v14, :cond_27

    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    if-eq v1, v9, :cond_1f

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_1f
    if-nez v8, :cond_20

    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_8

    :cond_20
    invoke-static {v8}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v0

    :goto_8
    move-object v8, v0

    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    if-ne v8, v0, :cond_23

    const/16 v0, 0x8

    if-eq v7, v0, :cond_21

    const/16 v0, 0x10

    if-eq v7, v0, :cond_21

    const/16 v0, 0x20

    if-ne v7, v0, :cond_23

    :cond_21
    if-eq v4, v2, :cond_22

    if-ne v4, v14, :cond_25

    filled-new-array {v10, v2}, [I

    move-result-object v9

    filled-new-array {v10, v10}, [I

    move-result-object v10

    const/4 v12, 0x1

    move v13, v3

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-static {v7, v11, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_23
    const/16 v0, 0x8

    if-eq v7, v0, :cond_24

    const/16 v0, 0x10

    if-eq v7, v0, :cond_24

    const/16 v0, 0x20

    if-ne v7, v0, :cond_25

    :cond_24
    if-eq v4, v2, :cond_26

    if-ne v4, v14, :cond_25

    filled-new-array {v10, v2}, [I

    move-result-object v9

    filled-new-array {v10, v10}, [I

    move-result-object v10

    const/4 v12, 0x1

    move v13, v3

    invoke-static/range {v8 .. v13}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_25
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported BitsPerSample for Gray + Alpha TIFF (expected 8, 16 or 32): %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    filled-new-array {v10, v2}, [I

    move-result-object v0

    invoke-static {v8, v0, v11, v2, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_27
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported SamplesPerPixel/BitsPerSample combination for Bi-level/Gray TIFF (expected 1/1, 1/2, 1/4, 1/8, 1/16 or 1/32, or 2/8, 2/16 or 2/32): %d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    if-eq v1, v9, :cond_29

    invoke-virtual {v8}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_29
    if-nez v8, :cond_2a

    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_9

    :cond_2a
    invoke-static {v8}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v0

    :goto_9
    invoke-static {v12}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    if-eq v7, v2, :cond_2b

    if-eq v7, v14, :cond_2b

    if-eq v7, v13, :cond_2b

    const/16 v1, 0x8

    if-eq v7, v1, :cond_2b

    const/16 v1, 0x10

    if-eq v7, v1, :cond_2b

    const/16 v1, 0x20

    if-ne v7, v1, :cond_2c

    :cond_2b
    invoke-static {v7, v11}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createGrayscale(II)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_2c
    if-eq v7, v2, :cond_30

    if-eq v7, v14, :cond_30

    if-ne v7, v13, :cond_2d

    goto :goto_b

    :cond_2d
    const/16 v1, 0x8

    if-eq v7, v1, :cond_2f

    const/16 v1, 0x10

    if-eq v7, v1, :cond_2f

    const/16 v1, 0x20

    if-ne v7, v1, :cond_2e

    goto :goto_a

    :cond_2e
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported BitsPerSample for Bi-level/Gray TIFF (expected 1, 2, 4, 8, 16 or 32): %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_a
    filled-new-array {v10}, [I

    move-result-object v1

    invoke-static {v0, v1, v11, v10, v10}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_30
    :goto_b
    invoke-static {v0, v7, v11}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createPackedGrayscale(Ljava/awt/color/ColorSpace;II)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_31
    :pswitch_5
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported TIFF PhotometricInterpretation value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x804c
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getWidth(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    const/16 p1, 0x100

    const-string v0, "ImageWidth"

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->u(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final h(II[I)Ljava/awt/image/IndexColorModel;
    .locals 9

    array-length v0, p3

    div-int/lit8 v3, v0, 0x3

    new-array v4, v3, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v5, p3, v2

    div-int/lit16 v5, v5, 0x100

    shl-int/lit8 v5, v5, 0x10

    add-int v6, v2, v3

    aget v6, p3, v6

    div-int/lit16 v6, v6, 0x100

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v2

    aget v6, p3, v6

    div-int/lit16 v6, v6, 0x100

    or-int/2addr v5, v6

    aput v5, v4, v2

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "8 bit ColorMap detected."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :goto_1
    if-ge v1, v3, :cond_2

    aget p0, p3, v1

    shl-int/lit8 p0, p0, 0x10

    add-int v0, v1, v3

    aget v0, p3, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v1

    aget v0, p3, v0

    or-int/2addr p0, v0

    aput p0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/awt/image/IndexColorModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move v2, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    return-object p0
.end method

.method public final j()Ljavax/imageio/ImageReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "com.sun.imageio.plugins.jpeg.JPEGImageReader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/imageio/spi/ImageReaderSpi;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getOriginatingProvider()Ljavax/imageio/spi/ImageReaderSpi;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p0, "JPEG"

    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageReader;

    return-object p0

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Could not instantiate JPEGImageReader"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(IIIILjava/io/InputStream;Ljava/nio/ByteOrder;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown TIFF Predictor value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TIFF Predictor value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sunia/HTREnginev2/mzh;

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/mzh;-><init>(Ljava/io/InputStream;IIILjava/nio/ByteOrder;)V

    return-object p0

    :cond_2
    return-object p5
.end method

.method public final m()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/16 v0, 0x102

    const-string v1, "BitsPerSample"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    aget-wide v1, p0, v2

    long-to-int v3, v1

    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const-wide/16 v4, 0x5

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    aget-wide v1, p0, v0

    const-wide/16 v6, 0x6

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-wide v1, p0, v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-wide v1, p0, v0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable BitsPerSample not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method public final n(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x125

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->y(ILjava/lang/Long;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No CCITT options for compression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x124

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->y(ILjava/lang/Long;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide v1
.end method

.method public final o(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_7

    const/16 v4, 0x20

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v3, :cond_1

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown TIFF SampleFormat (expected 1, 2, 3 or 4): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p2, v4, :cond_2

    return v5

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported BitsPerSample for SampleFormat 3/Floating Point (expected 32): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    if-ne p2, v4, :cond_4

    return v3

    :cond_4
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported BitsPerSample for SampleFormat 2/Signed Integer (expected 8/16/32): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v5

    :cond_6
    return p0

    :cond_7
    :goto_0
    if-gt p2, v1, :cond_8

    goto :goto_1

    :cond_8
    if-gt p2, v0, :cond_9

    move p0, v2

    goto :goto_1

    :cond_9
    move p0, v3

    :goto_1
    return p0
.end method

.method public final p()Ljava/awt/color/ICC_Profile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const v1, 0x8773

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljava/awt/color/ICC_Profile;->getInstance(Ljava/io/InputStream;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->validateProfile(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_Profile;

    move-result-object p0
    :try_end_0
    .catch Ljava/awt/color/CMMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring broken/incompatible ICC profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const v0, 0x8023

    if-eq p1, v0, :cond_0

    const v0, 0x884c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TIFF PhotometricInterpretation value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x14e

    invoke-virtual {p0, v0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result p0

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_3
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported TIFF PhotometricInterpretation value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x804c
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final r()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x106

    const-string v3, "PhotometricInterpretation"

    invoke-virtual {p0, v2, v3, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->w(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-ne v1, v0, :cond_6

    const/16 v0, 0x103

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v0

    const/16 v2, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v2

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v4, 0x152

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result v3

    :goto_0
    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/4 v7, 0x4

    if-ne v0, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v4, 0x140

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int/2addr v2, v3

    if-ne v2, v6, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    if-ne v2, v7, :cond_5

    const/4 v0, 0x5

    move v1, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing PhotometricInterpretation, determining fallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->J(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->getWidth(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->getHeight(I)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v15, v1, v14, v13}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v1

    invoke-virtual {v12}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    invoke-static {v15, v1, v2}, Ljavax/imageio/ImageReader;->checkReadParamBandSettings(Ljavax/imageio/ImageReadParam;II)V

    new-instance v11, Ljava/awt/Rectangle;

    invoke-direct {v11}, Ljava/awt/Rectangle;-><init>()V

    new-instance v8, Ljava/awt/Rectangle;

    invoke-direct {v8}, Ljava/awt/Rectangle;-><init>()V

    move-object/from16 v1, p2

    move v2, v14

    move v3, v13

    move-object v4, v12

    move-object v5, v11

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v15, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    if-eqz v15, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v10

    :goto_1
    invoke-virtual {v12}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/16 v16, 0x0

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, v16

    :goto_2
    invoke-virtual {v0, v2, v8, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->e(Ljava/awt/image/WritableRaster;Ljava/awt/Rectangle;[I)Ljava/awt/image/WritableRaster;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->r()I

    move-result v8

    const/16 v2, 0x103

    invoke-virtual {v0, v2, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v5

    const/16 v2, 0x13d

    invoke-virtual {v0, v2, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v18

    const/16 v2, 0x11c

    invoke-virtual {v0, v2, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v4, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v4

    :goto_3
    const-wide/32 v19, 0x7fffffff

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v10, 0x116

    move/from16 v20, v4

    invoke-virtual {v0, v10, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->y(ILjava/lang/Long;)J

    move-result-wide v3

    move-object v10, v1

    move/from16 v22, v2

    int-to-long v1, v13

    cmp-long v1, v3, v1

    if-gez v1, :cond_4

    long-to-int v1, v3

    goto :goto_4

    :cond_4
    move v1, v13

    :goto_4
    const/16 v2, 0x144

    const-string v3, "TileOffsets"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v2

    const-string v3, "TileHeight"

    const-string v4, "TileWidth"

    if-eqz v2, :cond_6

    const/16 v1, 0x145

    const-string v15, "TileByteCounts"

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v15, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing TileByteCounts for tiled TIFF with compression: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_5
    const/16 v2, 0x142

    invoke-virtual {v0, v2, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->u(ILjava/lang/String;)I

    move-result v2

    const/16 v4, 0x143

    invoke-virtual {v0, v4, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->u(ILjava/lang/String;)I

    move-result v3

    move-object v15, v1

    move-object/from16 v4, v26

    move-object/from16 v26, v10

    goto :goto_5

    :cond_6
    const/16 v2, 0x111

    const-string v15, "StripOffsets"

    move-object/from16 v26, v10

    const/4 v10, 0x1

    invoke-virtual {v0, v2, v15, v10}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v2

    const/16 v10, 0x117

    const-string v15, "StripByteCounts"

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v15, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v10

    if-nez v10, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing StripByteCounts for TIFF with compression: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v15, 0x142

    invoke-virtual {v0, v15, v4, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->w(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x143

    invoke-virtual {v0, v4, v3, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->w(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    move-object v15, v10

    move-object/from16 v4, v27

    :goto_5
    move v10, v2

    add-int v1, v14, v10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v10

    add-int v19, v13, v3

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v24, v12

    div-int v12, v19, v3

    invoke-virtual {v7, v10, v2}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    move-object/from16 v25, v7

    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v11}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    move-object/from16 v27, v7

    sparse-switch v5, :sswitch_data_0

    move/from16 v45, v5

    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TIFF Compression value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported TIFF Compression value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j()Ljavax/imageio/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v5

    check-cast v5, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v17, 0x15b

    move/from16 v35, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    goto :goto_6

    :cond_8
    move-object/from16 v7, v16

    :goto_6
    if-eqz v7, :cond_9

    new-instance v8, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    invoke-direct {v8, v7}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    invoke-virtual {v2, v8}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljavax/imageio/ImageReader;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    goto :goto_7

    :cond_9
    mul-int v7, v12, v1

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    const-string v7, "Missing JPEGTables for tiled/striped TIFF with compression: 7 (JPEG)"

    invoke-virtual {v0, v7}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v7, v12, :cond_12

    move/from16 v36, v12

    sub-int v12, v13, v8

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v37, v3

    move/from16 v38, v13

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v3, v1, :cond_10

    mul-int v17, v7, v1

    add-int v17, v17, v3

    move/from16 v39, v1

    sub-int v1, v14, v13

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v40, v10

    new-instance v10, Ljava/awt/Rectangle;

    invoke-direct {v10, v13, v8, v1, v12}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v10, v11}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    move/from16 v41, v14

    iget-object v14, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move-object/from16 v42, v11

    move/from16 p1, v12

    aget-wide v11, v4, v17

    invoke-interface {v14, v11, v12}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    if-eqz v15, :cond_b

    aget-wide v11, v15, v17

    long-to-int v11, v11

    goto :goto_a

    :cond_b
    const/16 v11, 0x7fff

    :goto_a
    new-instance v12, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;

    iget-object v14, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move/from16 v17, v3

    move-object/from16 v43, v4

    int-to-long v3, v11

    invoke-direct {v12, v14, v3, v4}, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    :try_start_0
    invoke-virtual {v2, v12}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    new-instance v3, Ljava/awt/Rectangle;

    iget v4, v10, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v4, v13

    iget v11, v10, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v11, v8

    iget v14, v10, Ljava/awt/Rectangle;->width:I

    move-object/from16 v44, v15

    iget v15, v10, Ljava/awt/Rectangle;->height:I

    invoke-direct {v3, v4, v11, v14, v15}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v5, v3}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v9, v6, v3, v3}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    new-instance v3, Ljava/awt/Point;

    iget v4, v10, Ljava/awt/Rectangle;->x:I

    move-object/from16 v11, v42

    iget v14, v11, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v4, v14

    div-int/2addr v4, v9

    iget v10, v10, Ljava/awt/Rectangle;->y:I

    iget v14, v11, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v10, v14

    div-int/2addr v10, v6

    invoke-direct {v3, v4, v10}, Ljava/awt/Point;-><init>(II)V

    if-nez v16, :cond_c

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v10

    move/from16 v14, v35

    invoke-virtual {v0, v14, v10}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->B(ILjavax/imageio/metadata/IIOMetadata;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_b

    :cond_c
    move/from16 v14, v35

    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v5, v3}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    move-object/from16 v15, v24

    invoke-virtual {v5, v15}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-object/from16 p2, v2

    goto :goto_c

    :cond_d
    move-object/from16 v15, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v4

    check-cast v4, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v4}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->C(I[B)V

    invoke-virtual {v15}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v4

    move-object/from16 p2, v2

    iget v2, v3, Ljava/awt/Point;->x:I

    iget v3, v3, Ljava/awt/Point;->y:I

    invoke-virtual {v4, v2, v3, v10}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_c
    invoke-interface {v12}, Ljavax/imageio/stream/ImageInputStream;->close()V

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-interface {v12}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2

    :cond_e
    move-object/from16 p2, v2

    move/from16 v17, v3

    move-object/from16 v43, v4

    move/from16 p1, v12

    move/from16 v41, v14

    move-object/from16 v44, v15

    move-object/from16 v15, v24

    move/from16 v14, v35

    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    add-int/2addr v13, v1

    add-int/lit8 v3, v17, 0x1

    move/from16 v12, p1

    move-object/from16 v2, p2

    move/from16 v35, v14

    move-object/from16 v24, v15

    move/from16 v1, v39

    move/from16 v10, v40

    move/from16 v14, v41

    move-object/from16 v4, v43

    move-object/from16 v15, v44

    goto/16 :goto_9

    :cond_10
    move/from16 v39, v1

    move-object/from16 p2, v2

    move-object/from16 v43, v4

    move/from16 v40, v10

    move/from16 p1, v12

    move/from16 v41, v14

    move-object/from16 v44, v15

    move-object/from16 v15, v24

    move/from16 v14, v35

    :goto_f
    int-to-float v1, v8

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    move/from16 v13, v38

    int-to-float v2, v13

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto :goto_10

    :cond_11
    add-int v8, v8, p1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move/from16 v35, v14

    move-object/from16 v24, v15

    move/from16 v12, v36

    move/from16 v3, v37

    move/from16 v1, v39

    move/from16 v10, v40

    move/from16 v14, v41

    move-object/from16 v4, v43

    move-object/from16 v15, v44

    goto/16 :goto_8

    :cond_12
    move-object/from16 v15, v24

    :cond_13
    :goto_10
    move-object/from16 v47, v15

    goto/16 :goto_37

    :sswitch_2
    move/from16 v39, v1

    move/from16 v37, v3

    move-object/from16 v43, v4

    move/from16 v40, v10

    move/from16 v36, v12

    move/from16 v41, v14

    move-object/from16 v44, v15

    move-object/from16 v15, v24

    move v14, v8

    const/16 v1, 0x200

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/16 v0, 0xe

    if-eq v1, v0, :cond_14

    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown TIFF JPEGProcessingMode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Unsupported TIFF JPEGProcessingMode: Lossless (14)"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->j()Ljavax/imageio/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v2

    check-cast v2, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;

    const/16 v3, 0x201

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v3

    const/16 v5, 0x202

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v5

    const/16 v7, 0x209

    const/16 v8, 0x208

    const/16 v10, 0x207

    if-lez v3, :cond_22

    iget-object v12, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v10

    if-nez v10, :cond_17

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v8

    if-nez v8, :cond_17

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v7

    if-eqz v7, :cond_16

    goto :goto_11

    :cond_16
    const-string v7, "Old-style JPEG compressed TIFF with JFIF stream encountered. Reading as single tile."

    invoke-virtual {v0, v7}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_12

    :cond_17
    :goto_11
    const-string v7, "Old-style JPEG compressed TIFF with JFIF stream encountered. Ignoring JPEG tables. Reading as single tile."

    invoke-virtual {v0, v7}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :goto_12
    iget-object v7, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    int-to-long v12, v3

    invoke-interface {v7, v12, v13}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v8

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, -0x28

    if-eq v7, v8, :cond_1c

    if-eqz v43, :cond_19

    move-object/from16 v7, v43

    array-length v10, v7

    const/4 v4, 0x1

    if-ne v10, v4, :cond_18

    iget-object v4, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move/from16 v24, v9

    const/4 v10, 0x0

    aget-wide v8, v7, v10

    invoke-interface {v4, v8, v9}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v4, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v8

    or-int/2addr v4, v8

    int-to-short v4, v4

    const/16 v8, -0x28

    if-ne v4, v8, :cond_1a

    aget-wide v8, v7, v10

    goto :goto_14

    :cond_18
    move/from16 v24, v9

    goto :goto_13

    :cond_19
    move/from16 v24, v9

    move-object/from16 v7, v43

    :cond_1a
    :goto_13
    move-wide v8, v12

    :goto_14
    cmp-long v4, v8, v12

    if-eqz v4, :cond_1b

    const-string v4, "Incorrect JPEGInterchangeFormat tag, using StripOffsets/TileOffsets instead."

    invoke-virtual {v0, v4}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_15

    :cond_1b
    const-string v4, "Incorrect JPEGInterchangeFormat tag encountered (not a valid SOI marker)."

    invoke-virtual {v0, v4}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :goto_15
    move-wide v12, v8

    goto :goto_16

    :cond_1c
    move/from16 v24, v9

    move-object/from16 v7, v43

    :goto_16
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1d

    const-string v3, "Missing JPEGInterchangeFormatLength tag"

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :goto_17
    const v5, 0x7fffffff

    goto :goto_18

    :cond_1d
    if-eqz v7, :cond_20

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    const/4 v8, 0x0

    aget-wide v16, v7, v8

    add-int/2addr v3, v5

    move/from16 v18, v5

    int-to-long v4, v3

    cmp-long v3, v16, v4

    if-ltz v3, :cond_1f

    if-eqz v44, :cond_1e

    move-object/from16 v4, v44

    array-length v3, v4

    if-ne v3, v9, :cond_1e

    aget-wide v3, v4, v8

    move/from16 v5, v18

    int-to-long v7, v5

    cmp-long v5, v3, v7

    if-lez v5, :cond_1e

    add-long/2addr v7, v3

    long-to-int v5, v7

    const-string v3, "Incorrect JPEGInterchangeFormatLength tag encountered, using StripByteCounts instead"

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_18

    :cond_1e
    const-string v3, "Incorrect JPEGInterchangeFormatLength tag encountered, ignoring tag value"

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_17

    :cond_1f
    move/from16 v5, v18

    :cond_20
    :goto_18
    invoke-virtual/range {p0 .. p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v12, v13}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v3, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;

    iget-object v4, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    int-to-long v7, v5

    invoke-direct {v3, v4, v7, v8}, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    :try_start_3
    invoke-virtual {v1, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    move/from16 v9, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v6, v4, v4}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {v1, v4}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v5

    invoke-virtual {v0, v14, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->B(ILjavax/imageio/metadata/IIOMetadata;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v2, v15}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    goto :goto_19

    :cond_21
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v2

    check-cast v2, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v2}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->C(I[B)V

    invoke-virtual {v15}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_19
    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v2

    :cond_22
    move-object/from16 v26, v43

    move-object/from16 v4, v44

    const-string v3, "Old-style JPEG compressed TIFF without JFIF stream encountered. Attempting to re-create JFIF stream."

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const-string v3, "JPEGQTables"

    const/4 v5, 0x1

    invoke-virtual {v0, v10, v3, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v3

    array-length v10, v3

    aget-wide v24, v3, v5

    const/4 v5, 0x0

    aget-wide v27, v3, v5

    sub-long v7, v24, v27

    long-to-int v7, v7

    filled-new-array {v10, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    const/4 v8, 0x0

    :goto_1b
    array-length v10, v7

    if-ge v8, v10, :cond_23

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move v12, v6

    aget-wide v5, v3, v8

    invoke-interface {v10, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v5, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    aget-object v6, v7, v8

    invoke-interface {v5, v6}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    add-int/lit8 v8, v8, 0x1

    move v6, v12

    goto :goto_1b

    :cond_23
    move v12, v6

    const-string v3, "JPEGDCTables"

    const/16 v5, 0x208

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v3, v6}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v3

    array-length v5, v3

    aget-wide v24, v3, v6

    const/4 v6, 0x0

    aget-wide v27, v3, v6

    move/from16 v35, v14

    move-object/from16 v38, v15

    sub-long v14, v24, v27

    long-to-int v6, v14

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    const/4 v6, 0x0

    :goto_1c
    array-length v8, v5

    if-ge v6, v8, :cond_24

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    aget-wide v14, v3, v6

    invoke-interface {v8, v14, v15}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    aget-object v10, v5, v6

    invoke-interface {v8, v10}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_24
    const-string v3, "JPEGACTables"

    const/16 v6, 0x209

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v3, v8}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object v3

    array-length v6, v3

    aget-wide v14, v3, v8

    const/4 v8, 0x0

    aget-wide v24, v3, v8

    sub-long v14, v14, v24

    long-to-int v8, v14

    filled-new-array {v6, v8}, [I

    move-result-object v6

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    const/4 v8, 0x0

    :goto_1d
    array-length v10, v6

    if-ge v8, v10, :cond_25

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    aget-wide v14, v3, v8

    invoke-interface {v10, v14, v15}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    aget-object v14, v6, v8

    invoke-interface {v10, v14}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_25
    invoke-virtual/range {p0 .. p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    move/from16 v14, v36

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1e
    if-ge v3, v14, :cond_2f

    sub-int v10, v13, v8

    move/from16 v15, v37

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v37, v9

    move/from16 v24, v13

    move/from16 v36, v14

    move/from16 v9, v39

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1f
    if-ge v14, v9, :cond_2d

    move/from16 v39, v12

    sub-int v12, v41, v13

    move-object/from16 p2, v2

    move/from16 v2, v40

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int v18, v3, v9

    add-int v18, v18, v14

    move/from16 v40, v9

    new-instance v9, Ljava/awt/Rectangle;

    invoke-direct {v9, v13, v8, v12, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v9, v11}, Ljava/awt/Rectangle;->intersects(Ljava/awt/Rectangle;)Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move/from16 p1, v13

    move/from16 v20, v14

    aget-wide v13, v26, v18

    invoke-interface {v9, v13, v14}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v9, Ljava/io/SequenceInputStream;

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/io/InputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v27

    move/from16 v28, v2

    move/from16 v29, v15

    move-object/from16 v30, v7

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    invoke-static/range {v27 .. v32}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->i(III[[B[[B[[B)Ljava/io/InputStream;

    move-result-object v13

    const/16 v22, 0x0

    aput-object v13, v14, v22

    iget-object v13, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    if-eqz v4, :cond_26

    aget-wide v5, v4, v18

    long-to-int v5, v5

    int-to-long v5, v5

    goto :goto_20

    :cond_26
    const-wide/16 v5, 0x7fff

    :goto_20
    invoke-static {v13, v5, v6}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;J)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v14, v6

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x2

    new-array v13, v6, [B

    fill-array-data v13, :array_0

    invoke-direct {v5, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v5, v14, v6

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v9}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v5

    :try_start_6
    invoke-virtual {v1, v5}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    new-instance v6, Ljava/awt/Rectangle;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v12, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object/from16 v13, p2

    invoke-virtual {v13, v6}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    move/from16 v14, v37

    move/from16 v6, v39

    invoke-virtual {v13, v14, v6, v9, v9}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    new-instance v9, Ljava/awt/Point;

    move/from16 v39, v6

    iget v6, v11, Ljava/awt/Rectangle;->x:I

    sub-int v6, p1, v6

    move-object/from16 p2, v7

    iget v7, v11, Ljava/awt/Rectangle;->y:I

    sub-int v7, v8, v7

    invoke-direct {v9, v6, v7}, Ljava/awt/Point;-><init>(II)V

    if-nez v16, :cond_27

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v7

    move/from16 v6, v35

    invoke-virtual {v0, v6, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->B(ILjavax/imageio/metadata/IIOMetadata;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_21

    :cond_27
    move/from16 v6, v35

    :goto_21
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v13, v9}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    move-object/from16 v7, v38

    invoke-virtual {v13, v7}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v13}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-object/from16 v18, v1

    move-object/from16 v42, v11

    move/from16 v37, v14

    goto :goto_22

    :cond_28
    move-object/from16 v42, v11

    move/from16 v37, v14

    move-object/from16 v7, v38

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v13}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v14

    check-cast v14, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v14}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v14

    invoke-virtual {v0, v6, v14}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->C(I[B)V

    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v14

    move-object/from16 v18, v1

    iget v1, v9, Ljava/awt/Point;->x:I

    iget v9, v9, Ljava/awt/Point;->y:I

    invoke-virtual {v14, v1, v9, v11}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_22
    if-eqz v5, :cond_2b

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->close()V

    goto :goto_24

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_29

    :try_start_8
    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_23
    throw v2

    :cond_2a
    move-object/from16 v18, v1

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    move-object/from16 v42, v11

    move/from16 p1, v13

    move/from16 v20, v14

    move/from16 v6, v35

    move-object/from16 v13, p2

    move-object/from16 p2, v7

    move-object/from16 v7, v38

    :cond_2b
    :goto_24
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_25

    :cond_2c
    add-int v1, p1, v12

    add-int/lit8 v14, v20, 0x1

    move/from16 v35, v6

    move-object/from16 v38, v7

    move-object/from16 v5, v22

    move-object/from16 v6, v25

    move/from16 v12, v39

    move/from16 v9, v40

    move-object/from16 v11, v42

    move-object/from16 v7, p2

    move/from16 v40, v2

    move-object v2, v13

    move v13, v1

    move-object/from16 v1, v18

    goto/16 :goto_1f

    :cond_2d
    move-object/from16 v18, v1

    move-object v13, v2

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    move-object/from16 p2, v7

    move-object/from16 v42, v11

    move/from16 v39, v12

    move/from16 v6, v35

    move-object/from16 v7, v38

    move/from16 v2, v40

    move/from16 v40, v9

    :goto_25
    int-to-float v1, v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    move/from16 v14, v24

    int-to-float v5, v14

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto :goto_26

    :cond_2e
    add-int/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    move/from16 v35, v6

    move-object/from16 v38, v7

    move-object/from16 v1, v18

    move-object/from16 v5, v22

    move-object/from16 v6, v25

    move/from16 v9, v37

    move/from16 v12, v39

    move/from16 v39, v40

    move-object/from16 v11, v42

    move-object/from16 v7, p2

    move/from16 v40, v2

    move-object v2, v13

    move v13, v14

    move/from16 v37, v15

    move/from16 v14, v36

    goto/16 :goto_1e

    :cond_2f
    move-object/from16 v7, v38

    :cond_30
    :goto_26
    move-object/from16 v47, v7

    goto/16 :goto_37

    :sswitch_3
    move/from16 v40, v1

    move/from16 v39, v6

    move v6, v8

    move/from16 v37, v9

    move-object/from16 v42, v11

    move/from16 v36, v12

    move/from16 v41, v14

    move-object/from16 v7, v24

    const/high16 v9, 0x42c80000    # 100.0f

    move-object v8, v2

    move v2, v10

    move v14, v13

    move-object/from16 v49, v15

    move v15, v3

    move-object/from16 v3, v26

    move-object/from16 v26, v4

    move-object/from16 v4, v49

    const/4 v13, 0x6

    if-ne v6, v13, :cond_3a

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_39

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_31

    goto :goto_27

    :cond_31
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "TIFF PhotometricInterpretation YCbCr requires BitsPerSample == [8,8,8] or [16,16,16]"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v10, 0x1

    :goto_27
    const/16 v1, 0x213

    invoke-virtual {v0, v1, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->v(ILjava/lang/Integer;)I

    move-result v1

    if-eq v1, v10, :cond_33

    const/4 v3, 0x2

    if-eq v1, v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uknown TIFF YCbCrPositioning value, expected 1 or 2: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_33
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v10, 0x212

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v3

    if-eqz v3, :cond_37

    :try_start_9
    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_0

    array-length v3, v10

    const/4 v11, 0x2

    if-ne v3, v11, :cond_36

    const/4 v12, 0x0

    aget v3, v10, v12

    const/4 v9, 0x4

    const/4 v12, 0x1

    if-eq v3, v12, :cond_34

    if-eq v3, v11, :cond_34

    if-ne v3, v9, :cond_36

    :cond_34
    aget v13, v10, v12

    if-eq v13, v12, :cond_35

    if-eq v13, v11, :cond_35

    if-ne v13, v9, :cond_36

    :cond_35
    if-ge v3, v13, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TIFF PhotometricInterpretation YCbCr with bad subsampling, expected subHoriz >= subVert: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_28

    :cond_36
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad TIFF YCbCrSubSampling value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown TIFF YCbCrSubSampling value type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_37
    const/4 v3, 0x2

    filled-new-array {v3, v3}, [I

    move-result-object v10

    :cond_38
    :goto_28
    move v12, v1

    move-object v13, v10

    goto :goto_29

    :cond_39
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFF PhotometricInterpretation YCbCr requires SamplesPerPixel == 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move-object/from16 v13, v16

    const/4 v12, 0x1

    :goto_29
    invoke-virtual/range {p0 .. p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    move/from16 v1, v22

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    invoke-virtual/range {v25 .. v25}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v1

    move v11, v1

    goto :goto_2a

    :cond_3b
    const/4 v11, 0x1

    :goto_2a
    move/from16 v9, v36

    const/4 v10, 0x0

    const/16 v21, 0x0

    :goto_2b
    if-ge v10, v9, :cond_30

    sub-int v1, v14, v21

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v1, v40

    const/4 v3, 0x0

    const/16 v25, 0x0

    :goto_2c
    if-ge v3, v1, :cond_47

    move-object/from16 v38, v7

    sub-int v7, v41, v25

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v28, v15

    const/4 v15, 0x0

    :goto_2d
    if-ge v15, v11, :cond_45

    mul-int v29, v15, v9

    mul-int v29, v29, v1

    mul-int v30, v10, v1

    add-int v29, v29, v30

    add-int v29, v29, v3

    move/from16 v40, v1

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move/from16 p1, v7

    move-object/from16 v30, v8

    aget-wide v7, v26, v29

    invoke-interface {v1, v7, v8}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    const/4 v1, 0x1

    if-ne v5, v1, :cond_3c

    const/4 v1, 0x6

    if-eq v6, v1, :cond_3c

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    move-object/from16 v19, v1

    move/from16 v33, v3

    move-object/from16 v35, v4

    move/from16 v45, v5

    move/from16 v23, v20

    move-object/from16 v8, v27

    move-object/from16 v32, v30

    move-object/from16 v27, v38

    move/from16 v20, v39

    move/from16 v31, v40

    const/4 v7, 0x6

    const/16 v29, 0x1

    const/high16 v34, 0x42c80000    # 100.0f

    const/16 v36, 0x0

    move/from16 v30, v2

    move/from16 v39, v9

    move/from16 v38, v14

    move/from16 v14, p1

    move v9, v6

    :goto_2e
    move-object/from16 v6, v42

    goto/16 :goto_33

    :cond_3c
    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v4, :cond_3d

    aget-wide v7, v4, v29

    invoke-static {v1, v7, v8}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;J)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_2f

    :cond_3d
    invoke-static {v1}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;)Ljava/io/InputStream;

    move-result-object v1

    :goto_2f
    move/from16 v7, v20

    invoke-virtual {v0, v5, v2, v7, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g(IIILjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->m()I

    move-result v20

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v29

    move/from16 v31, v40

    move-object/from16 v1, p0

    move-object/from16 v32, v30

    move/from16 v30, v2

    move/from16 v2, v18

    move/from16 v33, v3

    move/from16 v3, v30

    move-object/from16 v35, v4

    move/from16 v23, v7

    const/16 v36, 0x0

    move/from16 v4, v23

    move v7, v5

    move/from16 v5, v20

    move/from16 v20, v39

    move/from16 v39, v9

    move v9, v6

    move-object v6, v8

    move/from16 v45, v7

    move-object/from16 v8, v27

    move-object/from16 v27, v38

    const/high16 v34, 0x42c80000    # 100.0f

    move/from16 v38, v14

    move/from16 v14, p1

    move-object/from16 v7, v29

    invoke-virtual/range {v1 .. v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->k(IIIILjava/io/InputStream;Ljava/nio/ByteOrder;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v1, 0x6

    if-ne v9, v1, :cond_3e

    invoke-virtual/range {v32 .. v32}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v2

    if-nez v2, :cond_3e

    new-instance v2, Lcom/sunia/HTREnginev2/bxo;

    invoke-direct {v2, v3, v13, v12, v14}, Lcom/sunia/HTREnginev2/bxo;-><init>(Ljava/io/InputStream;[III)V

    move v7, v1

    move-object v3, v2

    const/16 v29, 0x1

    goto :goto_31

    :cond_3e
    if-ne v9, v1, :cond_40

    invoke-virtual/range {v32 .. v32}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3f

    new-instance v1, Lcom/sunia/HTREnginev2/axo;

    iget-object v2, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object v2, v1

    move-object v4, v13

    move v5, v12

    move v6, v14

    move/from16 v29, v7

    move-object/from16 v7, v19

    invoke-direct/range {v2 .. v7}, Lcom/sunia/HTREnginev2/axo;-><init>(Ljava/io/InputStream;[IIILjava/nio/ByteOrder;)V

    move-object v3, v1

    const/4 v7, 0x6

    goto :goto_31

    :cond_3f
    move/from16 v29, v7

    const/4 v7, 0x6

    goto :goto_30

    :cond_40
    const/16 v29, 0x1

    move v7, v1

    :goto_30
    if-eq v9, v7, :cond_44

    :goto_31
    iget-object v1, v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_41

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_32

    :cond_41
    new-instance v1, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;

    invoke-direct {v1, v3}, Lcom/twelvemonkeys/io/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_32
    move-object/from16 v19, v1

    goto/16 :goto_2e

    :goto_33
    iget v1, v6, Ljava/awt/Rectangle;->width:I

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v8, Ljava/awt/Rectangle;->width:I

    if-eqz p2, :cond_42

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v1

    goto :goto_34

    :cond_42
    move-object/from16 v1, v16

    :goto_34
    if-eqz p2, :cond_43

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    goto :goto_35

    :cond_43
    move/from16 v2, v29

    :goto_35
    move-object/from16 v5, v32

    invoke-virtual {v0, v5, v8, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->d(Ljava/awt/image/Raster;Ljava/awt/Rectangle;[II)Ljava/awt/image/Raster;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v6

    move/from16 v4, v37

    move-object/from16 v24, v5

    move/from16 v5, v20

    move-object/from16 v32, v6

    move v6, v15

    move/from16 v40, v7

    move/from16 v7, v23

    move-object/from16 v42, v8

    move/from16 v43, v9

    move/from16 v8, v43

    move-object/from16 v9, v17

    move/from16 v44, v29

    move/from16 v29, v30

    move/from16 v30, v10

    move/from16 v10, v25

    move/from16 v46, v11

    move/from16 v11, v21

    move-object/from16 v47, v27

    move/from16 v27, v39

    move/from16 v39, v12

    move v12, v14

    move/from16 v0, v38

    move-object/from16 v38, v13

    move/from16 v13, v22

    move/from16 v48, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v1 .. v14}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->K(Ljava/awt/image/Raster;Ljava/awt/Rectangle;IIIIILjava/awt/image/WritableRaster;IIIILjava/io/DataInput;)V

    add-int/lit8 v15, v15, 0x1

    move v14, v0

    move-object/from16 v8, v24

    move/from16 v9, v27

    move/from16 v2, v29

    move/from16 v10, v30

    move/from16 v1, v31

    move/from16 v3, v33

    move-object/from16 v4, v35

    move-object/from16 v13, v38

    move/from16 v12, v39

    move-object/from16 v27, v42

    move/from16 v6, v43

    move/from16 v5, v45

    move/from16 v11, v46

    move-object/from16 v38, v47

    move/from16 v7, v48

    move-object/from16 v0, p0

    move/from16 v39, v20

    move/from16 v20, v23

    move-object/from16 v42, v32

    goto/16 :goto_2d

    :cond_44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    move/from16 v31, v1

    move/from16 v29, v2

    move/from16 v33, v3

    move-object/from16 v35, v4

    move/from16 v45, v5

    move/from16 v43, v6

    move/from16 v48, v7

    move-object/from16 v24, v8

    move/from16 v30, v10

    move/from16 v46, v11

    move v0, v14

    move/from16 v23, v20

    move-object/from16 v47, v38

    move/from16 v20, v39

    move-object/from16 v32, v42

    const/high16 v34, 0x42c80000    # 100.0f

    const/16 v36, 0x0

    const/16 v40, 0x6

    const/16 v44, 0x1

    move/from16 v39, v12

    move-object/from16 v38, v13

    move-object/from16 v42, v27

    move/from16 v27, v9

    add-int v25, v25, v48

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_36

    :cond_46
    add-int/lit8 v3, v33, 0x1

    move v14, v0

    move-object/from16 v8, v24

    move/from16 v9, v27

    move/from16 v15, v28

    move/from16 v2, v29

    move/from16 v10, v30

    move/from16 v1, v31

    move-object/from16 v4, v35

    move-object/from16 v13, v38

    move/from16 v12, v39

    move-object/from16 v27, v42

    move/from16 v6, v43

    move/from16 v5, v45

    move/from16 v11, v46

    move-object/from16 v7, v47

    move-object/from16 v0, p0

    move/from16 v39, v20

    move/from16 v20, v23

    move-object/from16 v42, v32

    goto/16 :goto_2c

    :cond_47
    move/from16 v31, v1

    move/from16 v29, v2

    move-object/from16 v35, v4

    move/from16 v45, v5

    move/from16 v43, v6

    move-object/from16 v47, v7

    move-object/from16 v24, v8

    move/from16 v30, v10

    move/from16 v46, v11

    move-object/from16 v38, v13

    move v0, v14

    move/from16 v28, v15

    move/from16 v23, v20

    move/from16 v20, v39

    move-object/from16 v32, v42

    const/high16 v34, 0x42c80000    # 100.0f

    const/16 v36, 0x0

    const/16 v40, 0x6

    const/16 v44, 0x1

    move/from16 v39, v12

    move-object/from16 v42, v27

    move/from16 v27, v9

    :goto_36
    add-int v1, v21, v22

    int-to-float v2, v1

    mul-float v2, v2, v34

    int-to-float v3, v0

    div-float/2addr v2, v3

    move v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto :goto_37

    :cond_48
    add-int/lit8 v10, v30, 0x1

    move/from16 v21, v1

    move v14, v3

    move-object/from16 v8, v24

    move/from16 v9, v27

    move/from16 v15, v28

    move/from16 v2, v29

    move/from16 v40, v31

    move-object/from16 v4, v35

    move-object/from16 v13, v38

    move/from16 v12, v39

    move-object/from16 v27, v42

    move/from16 v6, v43

    move/from16 v5, v45

    move/from16 v11, v46

    move-object/from16 v7, v47

    move/from16 v39, v20

    move/from16 v20, v23

    move-object/from16 v42, v32

    goto/16 :goto_2b

    :goto_37
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    return-object v47

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0x7ffe -> :sswitch_0
        0x8003 -> :sswitch_0
        0x8005 -> :sswitch_3
        0x8029 -> :sswitch_0
        0x807f -> :sswitch_0
        0x8080 -> :sswitch_0
        0x8081 -> :sswitch_0
        0x8082 -> :sswitch_0
        0x808c -> :sswitch_0
        0x808d -> :sswitch_0
        0x80b2 -> :sswitch_3
        0x80b3 -> :sswitch_0
        0x8765 -> :sswitch_0
        0x8774 -> :sswitch_0
        0x8775 -> :sswitch_0
        0x8798 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public final readMetadata()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    if-nez v0, :cond_9

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;-><init>()V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->h:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of images: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {v4, v1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "IFD %d: %s\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    const-string v2, "-----------------------------------------------------------------------------"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-lez v4, :cond_1

    aget-byte v5, v1, v4

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;

    invoke-direct {v4}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;-><init>()V

    new-instance v5, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    invoke-direct {v5, v1, v0, v3}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([BII)V

    invoke-virtual {v4, v5}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    const v1, 0x83bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "short[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    instance-of v1, v0, [J

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "long[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast v0, [J

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    move-object v0, v1

    :cond_4
    instance-of v1, v0, [F

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "float[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "double[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;

    invoke-direct {v1}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;-><init>()V

    new-instance v3, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    check-cast v0, [B

    invoke-direct {v3, v0}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iptc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    const v1, 0x8649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;

    invoke-direct {v1}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;-><init>()V

    new-instance v3, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    const v0, 0x935c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Adobe Photoshop Document Data Block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v2, 0x23

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "input not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetMembers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->f:Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public final s()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/16 v0, 0x153

    const-string v1, "SampleFormat"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->x(ILjava/lang/String;Z)[J

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    aget-wide v1, p0, v2

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable TIFF SampleFormat not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int p0, v1

    return p0

    :cond_2
    return v0
.end method

.method public final t(ILjava/lang/String;ZI)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing TIFF tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez p4, :cond_3

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result v0

    if-eq v0, p4, :cond_3

    if-nez p3, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljavax/imageio/IIOException;

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Unexpected value count for %s: %d (expected %d values)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_4

    new-array p1, p4, [D

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p1, p3

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [F

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    array-length p1, p0

    new-array p2, p1, [D

    :goto_0
    if-ge p3, p1, :cond_5

    aget p4, p0, p3

    float-to-double v0, p4

    aput-wide v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    move-object p1, p2

    goto :goto_2

    :cond_6
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [D

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, [D

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-eqz p1, :cond_8

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    array-length p1, p0

    new-array p2, p1, [D

    :goto_1
    if-ge p3, p1, :cond_5

    aget-object p4, p0, p3

    invoke-virtual {p4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :goto_2
    return-object p1

    :cond_8
    new-instance p1, Ljavax/imageio/IIOException;

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Unsupported %s type: %s (%s)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->w(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public final v(ILjava/lang/Integer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->w(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public final w(ILjava/lang/String;Ljava/lang/Integer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->A(ILjava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final x(ILjava/lang/String;Z)[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->g:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing TIFF tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-array p1, v0, [J

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    aput-wide v0, p1, p3

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [S

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    array-length p1, p0

    new-array p2, p1, [J

    :goto_0
    if-ge p3, p1, :cond_3

    aget-short v0, p0, p3

    int-to-long v0, v0

    aput-wide v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    move-object p1, p2

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [I

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length p1, p0

    new-array p2, p1, [J

    :goto_1
    if-ge p3, p1, :cond_3

    aget v0, p0, p3

    int-to-long v0, v0

    aput-wide v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, [J

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, [J

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ljavax/imageio/IIOException;

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Unsupported %s type: %s (%s)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(ILjava/lang/Long;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->z(ILjava/lang/String;Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final z(ILjava/lang/String;Ljava/lang/Long;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;->A(ILjava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
