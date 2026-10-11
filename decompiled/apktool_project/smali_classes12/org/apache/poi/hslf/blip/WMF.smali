.class public final Lorg/apache/poi/hslf/blip/WMF;
.super Lorg/apache/poi/hslf/blip/Metafile;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

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

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/WMF;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

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


# virtual methods
.method public formatImageForSlideshow([B)[B
    .locals 8

    new-instance v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/sl/image/ImageHeaderWMF;-><init>([BI)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v3}, Lorg/apache/poi/hslf/blip/Metafile;->compress([BII)[B

    move-result-object v2

    new-instance v3, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    array-length v4, p1

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getLength()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setWmfSize(I)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getBounds()Ljava/awt/Rectangle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setBounds(Ljava/awt/Rectangle;)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    new-instance v4, Ljava/awt/Dimension;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    invoke-direct {v4, v5, v0}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setDimension(Ljava/awt/Dimension;)V

    array-length v0, v2

    invoke-virtual {v3, v0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setZipSize(I)V

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getChecksum([B)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v4

    mul-int/2addr v0, v4

    invoke-virtual {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    array-length v4, v2

    add-int/2addr v0, v4

    new-array v0, v0, [B

    array-length v4, p1

    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    array-length p0, p1

    invoke-static {p1, v1, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    add-int/2addr v4, p0

    :cond_0
    invoke-virtual {v3, v0, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->write([BI)V

    invoke-virtual {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result p0

    add-int/2addr v4, p0

    array-length p0, v2

    invoke-static {v2, v1, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getData()[B
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->read([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    int-to-long v5, p0

    const-wide/16 v7, 0x10

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    new-instance p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;-><init>(Ljava/awt/Rectangle;)V

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->write(Ljava/io/OutputStream;)V

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

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

    const/16 p0, 0x2160

    goto :goto_0

    :cond_0
    const/16 p0, 0x2170

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setSignature(I)V
    .locals 1

    const/16 v0, 0x2160

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2170

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for WMF"

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
