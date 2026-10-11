.class public final Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultAudioEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultAudioEncoder.kt\ncom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,223:1\n1#2:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008=\u0010>J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J,\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0!2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0002J&\u0010\'\u001a\u00020\u00042\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00160#2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001bH\u0002J\u0008\u0010(\u001a\u00020\u0010H\u0002J\u000e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0008\u0010*\u001a\u00020\u0004H\u0002J&\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\u0006\u0010%\u001a\u00020\u001b2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00160#H\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u001bH\u0002R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u00101R\u0018\u00105\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00104R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00107R\u0016\u0010:\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u00109R\u0016\u0010<\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010;\u00a8\u0006?"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;",
        "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "Lcom/onyx/android/sdk/media/config/FormatConfig;",
        "config",
        "",
        "createAudioFormat",
        "createMediaCodec",
        "",
        "outputPath",
        "",
        "appendMode",
        "createAudioContainer",
        "Lcom/onyx/android/sdk/media/config/RecordingConfig;",
        "init",
        "start",
        "stop",
        "",
        "getRecordDuration",
        "flush",
        "",
        "data",
        "",
        "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
        "encode",
        "k",
        "g",
        "h",
        "",
        "dataSize",
        "j",
        "c",
        "offset",
        "length",
        "Lkotlin/Pair;",
        "f",
        "",
        "list",
        "index",
        "limit",
        "a",
        "d",
        "b",
        "i",
        "Landroid/media/MediaCodec$BufferInfo;",
        "info",
        "encodeDataList",
        "l",
        "e",
        "Landroid/media/MediaCodec;",
        "Landroid/media/MediaCodec;",
        "mediaCodec",
        "Landroid/media/MediaFormat;",
        "Landroid/media/MediaFormat;",
        "audioFormat",
        "Lcom/onyx/android/sdk/media/container/IMediaContainer;",
        "Lcom/onyx/android/sdk/media/container/IMediaContainer;",
        "audioContainer",
        "I",
        "bytePerSec",
        "J",
        "recordTimeDurationInUs",
        "<init>",
        "()V",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultAudioEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultAudioEncoder.kt\ncom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,223:1\n1#2:224\n*E\n"
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaCodec;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/media/MediaFormat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/media/container/IMediaContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createAudioContainer$default(Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->createAudioContainer(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->d()J

    move-result-wide v4

    const/4 v6, 0x0

    move v1, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->i()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->l(Landroid/media/MediaCodec$BufferInfo;ILjava/util/List;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/media/AudioBufferExtKt;->isEndOfStream(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write last frame, time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e(I)V

    return-object v0
.end method

.method public final c([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, p1, v3, v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->f([BII)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ltz v5, :cond_0

    if-lez v4, :cond_0

    invoke-virtual {p0, v1, v5, v4}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a(Ljava/util/List;II)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->j(I)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeueInputBuffer, illegal index: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", limit: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public final createAudioContainer(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    invoke-static {v0}, Lcom/onyx/android/sdk/media/AudioBufferExtKt;->isAACEncode(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/media/container/MediaMuxerContainer;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/container/MediaMuxerContainer;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/media/container/MediaFileContainer;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/container/MediaFileContainer;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->onCreate(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "illegal operation, last audio container is not null released!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createAudioFormat(Lcom/onyx/android/sdk/media/config/FormatConfig;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/media/config/FormatConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioMime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    invoke-static {v0}, Lcom/onyx/android/sdk/media/AudioBufferExtKt;->isAACEncode(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    const-string v1, "bitrate"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getBitRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getAudioByteSizePerSec(III)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->d:I

    return-void
.end method

.method public final createMediaCodec()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    return-wide v0
.end method

.method public final e(I)V
    .locals 2

    const/4 p0, -0x2

    const/4 v0, 0x0

    const-class v1, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    if-eq p1, p0, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "encoding: INFO_TRY_AGAIN_LATER"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "encoding: INFO_OUTPUT_FORMAT_CHANGED"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public encode([B)Ljava/util/List;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->j(I)V

    new-instance p0, Lcom/onyx/android/sdk/media/bean/AudioDataBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/android/sdk/media/bean/AudioDataBean;-><init>([BJ)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f([BII)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    :cond_0
    if-gez v1, :cond_1

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sub-int/2addr p3, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public flush()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v0, v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->f([BII)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->d()J

    move-result-wide v6

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b()Ljava/util/List;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write end of stream success, total time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    return-void
.end method

.method public getRecordDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    const/16 p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->onRelease()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->isStarted()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string v1, "getOutputFormat(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->onStart(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public init(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/config/RecordingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFormatConfig()Lcom/onyx/android/sdk/media/config/FormatConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->createAudioFormat(Lcom/onyx/android/sdk/media/config/FormatConfig;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getAppendMode()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->createAudioContainer(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->createMediaCodec()V

    return-void
.end method

.method public final j(I)V
    .locals 6

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->d:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    const/16 p1, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File path must be provided!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Landroid/media/MediaCodec$BufferInfo;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec$BufferInfo;",
            "I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
            ">;)V"
        }
    .end annotation

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio encoder: codec config buffer. flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/onyx/android/sdk/media/AudioBufferExtKt;->isCodecFirstFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_3
    return-void

    :cond_4
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v2, [B

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->c:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3, p1}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->writeSampleData([BLandroid/media/MediaCodec$BufferInfo;)V

    :cond_5
    new-instance p1, Lcom/onyx/android/sdk/media/bean/AudioDataBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p1, v3, v4, v5}, Lcom/onyx/android/sdk/media/bean/AudioDataBean;-><init>([BJ)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->e:J

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;->b:Landroid/media/MediaFormat;

    return-void
.end method
