package com.onyx.android.sdk.media.recorder.state;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.media.bean.AudioStatus;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.onyx.android.sdk.media.recorder.state.RecorderState;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/recorder/state/RecorderStoppedState;", "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;", "()V", "getStatus", "Lcom/onyx/android/sdk/media/bean/AudioStatus;", "pause", "", "recordingManager", "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "resume", gon.f71290o0, "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RecorderStoppedState implements RecorderState {
    @Override // com.onyx.android.sdk.media.recorder.state.RecorderState
    @NotNull
    public AudioStatus getStatus() {
        return AudioStatus.STATUS_STOP;
    }

    @Override // com.onyx.android.sdk.media.recorder.state.RecorderState
    public void pause(@NotNull AudioRecordManager recordingManager) {
        Intrinsics.checkNotNullParameter(recordingManager, "recordingManager");
        throw new IllegalStateException("exec pause func in stopped state");
    }

    @Override // com.onyx.android.sdk.media.recorder.state.RecorderState
    public void resume(@NotNull AudioRecordManager recordingManager) {
        Intrinsics.checkNotNullParameter(recordingManager, "recordingManager");
        throw new IllegalStateException("exec resume func in stopped state");
    }

    @Override // com.onyx.android.sdk.media.recorder.state.RecorderState
    public void start(@NotNull AudioRecordManager recordingManager) {
        Intrinsics.checkNotNullParameter(recordingManager, "recordingManager");
        recordingManager.getAudioRecord().startRecording();
        recordingManager.getAudioEncoder().start();
        recordingManager.startTimer$sdk_media_release();
        recordingManager.acquireWakeLock$sdk_media_release();
        recordingManager.switchToRecordingState$sdk_media_release();
        Debug.INSTANCE.m32035d(RecorderStoppedState.class, "start recording, duration: " + recordingManager.getRecordDuration(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.media.recorder.state.RecorderState
    public void stop(@NotNull AudioRecordManager audioRecordManager) {
        RecorderState.DefaultImpls.stop(this, audioRecordManager);
    }
}
