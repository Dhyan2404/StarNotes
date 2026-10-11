.class public Lorg/apache/poi/util/OpencvUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac OS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "libs/libopencv_java440.dylib"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "libs/opencv_java455.dll"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareHist(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .line 1
    new-instance v0, Lorg/opencv/core/MatOfByte;

    invoke-static {p0}, Lorg/apache/poi/util/OpencvUtils;->readImage(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/opencv/core/MatOfByte;-><init>([B)V

    const/4 p0, -0x1

    invoke-static {v0, p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/opencv/core/MatOfByte;

    invoke-static {p1}, Lorg/apache/poi/util/OpencvUtils;->readImage(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/opencv/core/MatOfByte;-><init>([B)V

    invoke-static {v1, p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lorg/apache/poi/util/OpencvUtils;->compareHist(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static compareHist(Ljava/lang/String;[B)D
    .locals 2

    .line 4
    new-instance v0, Lorg/opencv/core/MatOfByte;

    invoke-static {p0}, Lorg/apache/poi/util/OpencvUtils;->readImage(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/opencv/core/MatOfByte;-><init>([B)V

    const/4 p0, -0x1

    invoke-static {v0, p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/opencv/core/MatOfByte;

    invoke-direct {v1, p1}, Lorg/opencv/core/MatOfByte;-><init>([B)V

    invoke-static {v1, p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;

    move-result-object p0

    .line 6
    invoke-static {v0, p0}, Lorg/apache/poi/util/OpencvUtils;->compareHist(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static compareHist(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 3

    .line 7
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 8
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    const/4 v2, 0x6

    .line 9
    invoke-static {p0, v0, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 10
    invoke-static {p1, v1, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 11
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->release()V

    .line 12
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 13
    new-instance p0, Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    .line 14
    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    const/4 v2, 0x5

    .line 15
    invoke-virtual {v0, p0, v2}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 16
    invoke-virtual {v1, p1, v2}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 17
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 18
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, v0}, Lorg/opencv/imgproc/Imgproc;->compareHist(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D

    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->release()V

    .line 21
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    return-wide v0
.end method

.method private static readImage(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
