.class public final Lcom/onyx/android/sdk/note/common/utils/WavUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/WavUtils;",
        "",
        "()V",
        "addWavHeader",
        "",
        "pmcSrc",
        "getWavHeaderData",
        "pcmSize",
        "",
        "writeWavHeader",
        "",
        "src",
        "Ljava/io/File;",
        "WaveHeader",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/WavUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/WavUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/WavUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/WavUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addWavHeader([B)[B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pmcSrc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils;->getWavHeaderData(I)[B

    move-result-object p0

    array-length v0, p1

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWavHeaderData(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;-><init>()V

    add-int/lit8 v0, p1, 0x24

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setFileLength(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setFmtHdrLeth(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setBitsPerSample(S)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setChannels(S)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setFormatTag(S)V

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setSamplesPerSec(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getChannels()S

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getBitsPerSample()S

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setBlockAlign(S)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getBlockAlign()S

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getSamplesPerSec()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setAvgBytesPerSec(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->setDataHdrLeth(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;->getHeader()[B

    move-result-object p0

    return-object p0
.end method

.method public final writeWavHeader(Ljava/io/File;)V
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const/16 p1, 0x2c

    int-to-long v4, p1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/WavUtils;->getWavHeaderData(I)[B

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p0, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "Write wav header SUCCESS!"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    return-void

    :goto_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
