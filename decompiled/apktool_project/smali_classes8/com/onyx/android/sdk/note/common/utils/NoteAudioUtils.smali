.class public final Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J$\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J(\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0004H\u0002R\u0014\u0010\u001b\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;",
        "",
        "",
        "aacPath",
        "",
        "limitBytes",
        "",
        "decodeAudioToWav",
        "audioFilePath",
        "getAudioDuration",
        "c",
        "Landroid/media/MediaExtractor;",
        "extractor",
        "Landroid/media/MediaFormat;",
        "mediaFormat",
        "a",
        "Landroid/media/MediaCodec;",
        "codec",
        "kTimeOutUs",
        "",
        "e",
        "Landroid/media/MediaCodec$BufferInfo;",
        "info",
        "Ljava/io/ByteArrayOutputStream;",
        "output",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "NoteAudioUtils"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;Landroid/media/MediaExtractor;Landroid/media/MediaFormat;JILjava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide p3, 0x7fffffffffffffffL

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->a(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;J)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;Ljava/lang/String;JILjava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->c(Ljava/lang/String;J)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeAudioToWav$default(Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;Ljava/lang/String;JILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->decodeAudioToWav(Ljava/lang/String;J)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;J)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    const-string v1, "createDecoderByType(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v1, v1, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v0, v8

    move v1, v0

    :goto_0
    const-string v10, "decodeAudioToPcm finish"

    const-string v11, "NoteAudioUtils"

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v0

    cmp-long v0, v2, p3

    if-ltz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    const-wide/16 v0, 0x2710

    move-object v12, p0

    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {p0, v13, v7, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->e(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;J)Z

    move-result v1

    goto :goto_1

    :cond_1
    move-object v12, p0

    move-object/from16 v13, p1

    :goto_1
    move v14, v1

    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, v7

    move-object v2, v9

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->f(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;Ljava/io/ByteArrayOutputStream;J)Z

    move-result v0

    move v1, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v13, p1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v10, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->release()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v10, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->release()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method

.method public final c(Ljava/lang/String;J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "getTrackFormat(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio/"

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "Invalid file with audio track."

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "NoteAudioUtils"

    invoke-virtual {p0, p3, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-object v3

    :cond_2
    invoke-virtual {p0, v0, v4, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->a(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;J)[B

    move-result-object p0

    return-object p0
.end method

.method public final decodeAudioToWav(Ljava/lang/String;J)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "aacPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;->c(Ljava/lang/String;J)[B

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/WavUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/WavUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/utils/WavUtils;->addWavHeader([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;J)Z
    .locals 7

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    const/4 p0, 0x0

    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gez v3, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p3, "saw input EOS."

    new-array p0, p0, [Ljava/lang/Object;

    const-string p4, "NoteAudioUtils"

    invoke-virtual {p1, p4, p3, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    :goto_0
    return p0
.end method

.method public final f(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;Ljava/io/ByteArrayOutputStream;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p4, p5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0

    const-string p4, "NoteAudioUtils"

    const/4 p5, 0x0

    if-ltz p0, :cond_2

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p3, "audio encoder: codec config buffer"

    new-array v0, p5, [Ljava/lang/Object;

    invoke-virtual {p2, p4, p3, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p5

    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    invoke-virtual {p1, p0, p5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "saw output EOS."

    new-array p2, p5, [Ljava/lang/Object;

    invoke-virtual {p0, p4, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p5, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x2

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string p1, "getOutputFormat(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "output format has changed to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, p5, [Ljava/lang/Object;

    invoke-virtual {p1, p4, p0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return p5
.end method

.method public final getAudioDuration(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "audioFilePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    throw p1
.end method
