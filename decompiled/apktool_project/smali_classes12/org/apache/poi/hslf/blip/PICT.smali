.class public final Lorg/apache/poi/hslf/blip/PICT;
.super Lorg/apache/poi/hslf/blip/Metafile;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/blip/PICT;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/blip/PICT;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/PICT;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/Metafile;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method private read([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->read([BI)V

    int-to-long v0, p2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    new-instance p2, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p2, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const/16 p1, 0x1000

    new-array p1, p1, [B

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getWmfSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v0, p1, v1, v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write([BII)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v2

    const/16 v3, 0xfff

    :goto_2
    if-ltz v3, :cond_1

    :try_start_7
    aget-byte v4, p1, v3

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getWmfSize()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v5

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getWmfSize()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_2
    invoke-virtual {v0, p1, v1, v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write([BII)V

    :cond_3
    sget-object p1, Lorg/apache/poi/hslf/blip/PICT;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v1, "PICT zip-stream is invalid, read as much as possible. Uncompressed length of header: {} / Read bytes: {}"

    invoke-virtual {p0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getWmfSize()I

    move-result p0

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1, p0, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p0

    :goto_4
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception p1

    :try_start_d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method


# virtual methods
.method public formatImageForSlideshow([B)[B
    .locals 7

    new-instance v0, Lorg/apache/poi/sl/image/ImageHeaderPICT;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/sl/image/ImageHeaderPICT;-><init>([BI)V

    new-instance v2, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setWmfSize(I)V

    invoke-static {p1, v1, v3}, Lorg/apache/poi/hslf/blip/Metafile;->compress([BII)[B

    move-result-object v1

    array-length v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setZipSize(I)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setBounds(Ljava/awt/Rectangle;)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    new-instance v3, Ljava/awt/Dimension;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    invoke-direct {v3, v4, v0}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setDimension(Ljava/awt/Dimension;)V

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getChecksum([B)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    array-length p0, p1

    invoke-static {p1, v4, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    add-int/2addr v3, p0

    :cond_0
    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->write([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result p0

    add-int/2addr v3, p0

    array-length p0, v1

    invoke-static {v1, v4, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getData()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x200

    :try_start_1
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hslf/blip/PICT;->read([BI)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSignature()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x5420

    goto :goto_0

    :cond_0
    const/16 p0, 0x5430

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setSignature(I)V
    .locals 1

    const/16 v0, 0x5420

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5430

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for PICT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    :goto_0
    return-void
.end method
