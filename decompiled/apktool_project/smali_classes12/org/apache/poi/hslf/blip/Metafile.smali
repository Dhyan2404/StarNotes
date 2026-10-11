.class public abstract Lorg/apache/poi/hslf/blip/Metafile;
.super Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/blip/Metafile$Header;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method public static compress([BII)[B
    .locals 2

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Won\'t happen"

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getImageDimension()Ljava/awt/Dimension;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    new-instance v1, Lorg/apache/poi/hslf/blip/Metafile$Header;

    invoke-direct {v1}, Lorg/apache/poi/hslf/blip/Metafile$Header;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lorg/apache/poi/hslf/blip/Metafile$Header;->read([BI)V

    new-instance p0, Ljava/awt/Dimension;

    invoke-static {v1}, Lorg/apache/poi/hslf/blip/Metafile$Header;->access$000(Lorg/apache/poi/hslf/blip/Metafile$Header;)Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1}, Lorg/apache/poi/hslf/blip/Metafile$Header;->access$000(Lorg/apache/poi/hslf/blip/Metafile$Header;)Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p0
.end method
