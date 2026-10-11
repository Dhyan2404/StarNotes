.class public final Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/media/recorder/state/RecorderState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;",
        "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
        "()V",
        "getStatus",
        "Lcom/onyx/android/sdk/media/bean/AudioStatus;",
        "pause",
        "",
        "recordingManager",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;",
        "resume",
        "start",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/media/bean/AudioStatus;->STATUS_STOP:Lcom/onyx/android/sdk/media/bean/AudioStatus;

    return-object p0
.end method

.method public pause(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "recordingManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "exec pause func in stopped state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resume(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "recordingManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "exec resume func in stopped state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "recordingManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getAudioRecord$sdk_media_release()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->startRecording()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getAudioEncoder$sdk_media_release()Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;->start()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->startTimer$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->acquireWakeLock$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->switchToRecordingState$sdk_media_release()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start recording, duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/media/recorder/state/RecorderState$DefaultImpls;->stop(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method
