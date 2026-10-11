.class public final Lcom/onyx/android/sdk/media/player/state/PlayerState$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/media/player/state/PlayerState;
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
.method public static pause(Lcom/onyx/android/sdk/media/player/state/PlayerState;Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/media/player/state/PlayerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "playerManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Lcom/onyx/android/sdk/media/player/state/PlayerState;Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/media/player/state/PlayerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "playerManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static stop(Lcom/onyx/android/sdk/media/player/state/PlayerState;Lcom/onyx/android/sdk/media/player/ExoPlayerManager;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/media/player/state/PlayerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/media/player/ExoPlayerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "playerManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->getExoPlayer$sdk_media_release()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->stop()V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->releaseWakeLock$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->removePlayTimerObserver$sdk_media_release()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/player/ExoPlayerManager;->switchToStoppedState$sdk_media_release()V

    return-void
.end method
