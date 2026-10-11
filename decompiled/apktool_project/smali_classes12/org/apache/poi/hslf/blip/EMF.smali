.class public final Lorg/apache/poi/hslf/blip/EMF;
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

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/EMF;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

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

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/apache/poi/hslf/blip/Metafile;->compress([BII)[B

    move-result-object v0

    new-instance v2, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/sl/image/ImageHeaderEMF;-><init>([BI)V

    new-instance v3, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    array-length v4, p1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setWmfSize(I)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderEMF;->getBounds()Ljava/awt/Rectangle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setBounds(Ljava/awt/Rectangle;)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderEMF;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    new-instance v4, Ljava/awt/Dimension;

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    invoke-direct {v4, v5, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setDimension(Ljava/awt/Dimension;)V

    array-length v2, v0

    invoke-virtual {v3, v2}, Lorg/apache/poi/hslf/blip/Metafile$Header;->setZipSize(I)V

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getChecksum([B)[B

    move-result-object p1

    array-length v2, p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v4, p1

    invoke-static {p1, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    array-length p0, p1

    invoke-static {p1, v1, v2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    add-int/2addr v4, p0

    :cond_0
    invoke-virtual {v3, v2, v4}, Lorg/apache/poi/hslf/blip/Metafile$Header;->write([BI)V

    invoke-virtual {v3}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result p0

    add-int/2addr v4, p0

    array-length p0, v0

    invoke-static {v0, v1, v2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getData()[B
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object p0

    new-instance v0, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v0}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/hslf/blip/Metafile$Header;->read([BI)V

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    new-instance v2, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->getSize()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    invoke-static {p0, v2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_b
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception v1

    :try_start_f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

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

    const/16 p0, 0x3d40

    goto :goto_0

    :cond_0
    const/16 p0, 0x3d50

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setSignature(I)V
    .locals 1

    const/16 v0, 0x3d40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d50

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for EMF"

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
