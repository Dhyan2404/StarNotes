.class public final Lcom/onyx/android/sdk/universal/editor/MediaBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0008J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/MediaBundle;",
        "",
        "",
        "isRecording",
        "isPlaying",
        "",
        "getRecordFilePath",
        "getPlayFilePath",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getMediaPlayEventBus",
        "getRecorderEventBus",
        "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;",
        "getRecorderManager",
        "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;",
        "getMediaPlayManager",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "audioDataSet",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->stopRecording()Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->stop()V

    return-void
.end method

.method public final getMediaPlayEventBus()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->Companion:Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;->getInstance()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    return-object p0
.end method

.method public final getPlayFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getCurrentAudioFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecordFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getRecordFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecorderEventBus()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->Companion:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;->getInstance()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getMediaPlayManager()Lcom/onyx/android/sdk/media/player/ExoPlayerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->isOpen()Z

    move-result p0

    return p0
.end method

.method public final isRecording()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/MediaBundle;->getRecorderManager()Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->isOpen()Z

    move-result p0

    return p0
.end method
