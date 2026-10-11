package com.onyx.android.sdk.media.player.state;

import com.onyx.android.sdk.media.player.ExoPlayerManager;
import com.onyx.android.sdk.media.player.state.PlayerState;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/media/player/state/PlayerPausedState;", "Lcom/onyx/android/sdk/media/player/state/PlayerState;", "()V", gon.f71290o0, "", "playerManager", "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PlayerPausedState implements PlayerState {
    @Override // com.onyx.android.sdk.media.player.state.PlayerState
    public void pause(@NotNull ExoPlayerManager exoPlayerManager) {
        PlayerState.DefaultImpls.pause(this, exoPlayerManager);
    }

    @Override // com.onyx.android.sdk.media.player.state.PlayerState
    public void start(@NotNull ExoPlayerManager playerManager) {
        Intrinsics.checkNotNullParameter(playerManager, "playerManager");
        playerManager.getExoPlayer().play();
        playerManager.postPlayProgress$sdk_media_release();
        playerManager.acquireWakeLock$sdk_media_release();
        playerManager.switchToPlayingState$sdk_media_release();
    }

    @Override // com.onyx.android.sdk.media.player.state.PlayerState
    public void stop(@NotNull ExoPlayerManager exoPlayerManager) {
        PlayerState.DefaultImpls.stop(this, exoPlayerManager);
    }
}
