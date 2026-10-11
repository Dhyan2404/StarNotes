package com.onyx.android.sdk.universal.editor;

import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.media.player.ExoPlayerManager;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/MediaBundle;", "", "", "isRecording", "isPlaying", "", "getRecordFilePath", "getPlayFilePath", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getMediaPlayEventBus", "getRecorderEventBus", "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "getRecorderManager", "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", "getMediaPlayManager", "", "destroy", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "a", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "audioDataSet", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MediaBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public AudioDataSet audioDataSet;

    public final void destroy() {
        getRecorderManager().stopRecording();
        getMediaPlayManager().stop();
    }

    @NotNull
    public final EventBusHolder getMediaPlayEventBus() {
        return getMediaPlayManager().getEventBusHolder();
    }

    @NotNull
    public final ExoPlayerManager getMediaPlayManager() {
        return ExoPlayerManager.INSTANCE.getInstance();
    }

    @NotNull
    public final String getPlayFilePath() {
        return getMediaPlayManager().getCurrentAudioFilePath();
    }

    @NotNull
    public final String getRecordFilePath() {
        return getRecorderManager().getRecordFilePath();
    }

    @NotNull
    public final EventBusHolder getRecorderEventBus() {
        return getRecorderManager().getEventBusHolder();
    }

    @NotNull
    public final AudioRecordManager getRecorderManager() {
        return AudioRecordManager.INSTANCE.getInstance();
    }

    public final boolean isPlaying() {
        return getMediaPlayManager().isOpen();
    }

    public final boolean isRecording() {
        return getRecorderManager().isOpen();
    }
}
