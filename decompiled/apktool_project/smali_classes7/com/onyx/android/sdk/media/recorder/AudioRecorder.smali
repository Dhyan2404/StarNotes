.class public final Lcom/onyx/android/sdk/media/recorder/AudioRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/recorder/AudioRecorder;",
        "",
        "Lcom/onyx/android/sdk/media/config/FormatConfig;",
        "config",
        "",
        "createAudioRecord",
        "",
        "readAudioChunk",
        "startRecording",
        "stopRecording",
        "releaseRecord",
        "",
        "isOpen",
        "b",
        "a",
        "Landroid/media/AudioRecord;",
        "Landroid/media/AudioRecord;",
        "audioRecord",
        "",
        "I",
        "audioFormat",
        "c",
        "bufferSize",
        "d",
        "getMaxAmplitude",
        "()I",
        "setMaxAmplitude",
        "(I)V",
        "maxAmplitude",
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


# instance fields
.field public a:Landroid/media/AudioRecord;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->b:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 5

    iget v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->calculateMaxAmplitude([B)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->d:I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record read: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [B

    :goto_0
    return-object v0
.end method

.method public final b()[B
    .locals 5

    iget v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->c:I

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    iget-object v2, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {v2, v1, v0}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->short2byte([SI)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->calculateMaxAmplitude([B)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->d:I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record read: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [B

    :goto_0
    return-object v0
.end method

.method public final createAudioRecord(Lcom/onyx/android/sdk/media/config/FormatConfig;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/media/config/FormatConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    move v4, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->b:I

    sget-object v0, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getAudioBufferSize(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->c:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v1

    invoke-static {v0, v4, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    new-instance v7, Landroid/media/AudioRecord;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioFormat()I

    move-result v5

    mul-int/lit8 v6, v0, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "illegal operation, audio record is running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMaxAmplitude()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->d:I

    return p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final readAudioChunk()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->b()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final releaseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    return-void
.end method

.method public final setMaxAmplitude(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->d:I

    return-void
.end method

.method public final startRecording()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    return-void
.end method

.method public final stopRecording()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->a:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    return-void
.end method
