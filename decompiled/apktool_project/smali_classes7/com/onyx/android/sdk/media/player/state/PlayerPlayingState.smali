.class public final Lcom/onyx/android/sdk/media/player/state/PlayerPlayingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/media/player/state/PlayerState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/player/state/PlayerPlayingState;",
        "Lcom/onyx/android/sdk/media/player/state/PlayerState;",
        "()V",
        "pause",
        "",
        "playerManager",
        "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;",
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
.method public pause(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "playerManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer$sdk_media_release()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->releaseWakeLock$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->removePlayTimerObserver$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->switchToPausedState$sdk_media_release()V

    return-void
.end method

.method public start(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/media/player/state/PlayerState$DefaultImpls;->start(Lcom/onyx/android/sdk/media/player/state/PlayerState;Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    return-void
.end method

.method public stop(Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/media/player/state/PlayerState$DefaultImpls;->stop(Lcom/onyx/android/sdk/media/player/state/PlayerState;Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V

    return-void
.end method
