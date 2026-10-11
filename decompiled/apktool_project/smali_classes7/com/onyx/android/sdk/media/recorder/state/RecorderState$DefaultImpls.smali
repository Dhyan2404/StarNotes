.class public final Lcom/onyx/android/sdk/media/recorder/state/RecorderState$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/media/recorder/state/RecorderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static stop(Lcom/onyx/android/sdk/media/recorder/state/RecorderState;Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/media/recorder/state/RecorderState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recordingManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getAudioRecord$sdk_media_release()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->stopRecording()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->cancelTimer$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->releaseWakeLock$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->postRecordChangeEvent$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->switchToStopState$sdk_media_release()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopRecording"

    invoke-virtual {p1, p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
