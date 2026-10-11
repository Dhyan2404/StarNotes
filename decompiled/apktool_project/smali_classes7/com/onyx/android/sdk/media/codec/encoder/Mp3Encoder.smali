.class public final Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMp3Encoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mp3Encoder.kt\ncom/onyx/android/sdk/media/codec/encoder/Mp3Encoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 )2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;",
        "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "Lcom/onyx/android/sdk/media/config/RecordingConfig;",
        "config",
        "",
        "init",
        "start",
        "",
        "data",
        "",
        "Lcom/onyx/android/sdk/media/bean/AudioDataBean;",
        "encode",
        "flush",
        "stop",
        "",
        "getRecordDuration",
        "",
        "outputPath",
        "a",
        "",
        "dataSize",
        "b",
        "Lcom/onyx/android/sdk/media/lame/OnyxLame;",
        "Lcom/onyx/android/sdk/media/lame/OnyxLame;",
        "androidLame",
        "Lcom/onyx/android/sdk/media/container/IMediaContainer;",
        "Lcom/onyx/android/sdk/media/container/IMediaContainer;",
        "audioContainer",
        "c",
        "[B",
        "mp3Buffer",
        "d",
        "I",
        "channelCount",
        "e",
        "bytePerSec",
        "f",
        "J",
        "recordTimeDurationInMs",
        "<init>",
        "()V",
        "Companion",
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
        "SMAP\nMp3Encoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mp3Encoder.kt\ncom/onyx/android/sdk/media/codec/encoder/Mp3Encoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x1c20

.field public static final h:I = 0x20


# instance fields
.field public a:Lcom/onyx/android/sdk/media/lame/OnyxLame;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/media/container/IMediaContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->Companion:Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->b:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    new-instance v0, Lcom/onyx/android/sdk/media/container/MediaFileContainer;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/container/MediaFileContainer;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->b:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    invoke-interface {v0, p1, v1}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->onCreate(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File path must be provided!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "illegal operation, last audio container is not null released!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->e:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->f:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->f:J

    return-void
.end method

.method public encode([B)Ljava/util/List;
    .locals 5
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

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->c:[B

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->b(I)V

    sget-object v1, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->byte2Short([B)[S

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    if-eqz v2, :cond_2

    array-length v3, v1

    invoke-virtual {v2, v1, v1, v3, v0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->encode([S[SI[B)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    if-eqz v2, :cond_2

    array-length v3, v1

    invoke-virtual {v2, v1, v3, v0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->encodeBufferInterLeaved([SI[B)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-gtz v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mp3 encode failed, ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->b:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0, v4, v1}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->write([BII)V

    :cond_4
    :goto_1
    new-instance p0, Lcom/onyx/android/sdk/media/bean/AudioDataBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/android/sdk/media/bean/AudioDataBean;-><init>([BJ)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->c:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->flush([B)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-gtz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mp3 flush failed, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->b:Lcom/onyx/android/sdk/media/container/IMediaContainer;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, v2, v1}, Lcom/onyx/android/sdk/media/container/IMediaContainer;->write([BII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getRecordDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->f:J

    return-wide v0
.end method

.method public init(Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/media/config/RecordingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFormatConfig()Lcom/onyx/android/sdk/media/config/FormatConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->close()V

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/media/lame/LameBuilder;

    invoke-direct {v1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->setInSampleRate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->setOutSampleRate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->setOutChannels(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->setOutBitrate(I)Lcom/onyx/android/sdk/media/lame/LameBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->build()Lcom/onyx/android/sdk/media/lame/OnyxLame;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    sget-object v1, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getAudioBufferSize(II)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result v3

    iput v3, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->d:I

    const/16 v3, 0x1c20

    int-to-double v3, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->c:[B

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getAudioByteSizePerSec(III)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->e:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/RecordingConfig;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->f:J

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->flush()V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;->a:Lcom/onyx/android/sdk/media/lame/OnyxLame;

    return-void
.end method
