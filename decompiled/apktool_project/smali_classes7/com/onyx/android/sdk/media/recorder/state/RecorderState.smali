.class public interface abstract Lcom/onyx/android/sdk/media/recorder/state/RecorderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/recorder/state/RecorderState$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;",
        "",
        "getStatus",
        "Lcom/onyx/android/sdk/media/bean/AudioStatus;",
        "pause",
        "",
        "recordingManager",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;",
        "resume",
        "start",
        "stop",
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


# virtual methods
.method public abstract getStatus()Lcom/onyx/android/sdk/media/bean/AudioStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract pause(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract resume(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract start(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract stop(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
