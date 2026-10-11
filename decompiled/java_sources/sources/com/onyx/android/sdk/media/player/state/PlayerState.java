package com.onyx.android.sdk.media.player.state;

import com.google.android.exoplayer2.ExoPlayer;
import com.onyx.android.sdk.media.player.ExoPlayerManager;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/player/state/PlayerState;", "", "pause", "", "playerManager", "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", gon.f71290o0, "stop", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface PlayerState {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static void pause(@NotNull PlayerState playerState, @NotNull ExoPlayerManager playerManager) {
            Intrinsics.checkNotNullParameter(playerManager, "playerManager");
        }

        public static void start(@NotNull PlayerState playerState, @NotNull ExoPlayerManager playerManager) {
            Intrinsics.checkNotNullParameter(playerManager, "playerManager");
        }

        public static void stop(@NotNull PlayerState playerState, @NotNull ExoPlayerManager playerManager) {
            Intrinsics.checkNotNullParameter(playerManager, "playerManager");
            ExoPlayer exoPlayer = playerManager.getExoPlayer();
            if (exoPlayer != null) {
                exoPlayer.stop();
            }
            playerManager.releaseWakeLock$sdk_media_release();
            playerManager.removePlayTimerObserver$sdk_media_release();
            playerManager.switchToStoppedState$sdk_media_release();
        }
    }

    void pause(@NotNull ExoPlayerManager playerManager);

    void start(@NotNull ExoPlayerManager playerManager);

    void stop(@NotNull ExoPlayerManager playerManager);
}
