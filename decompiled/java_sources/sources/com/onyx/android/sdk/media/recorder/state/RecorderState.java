package com.onyx.android.sdk.media.recorder.state;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.media.bean.AudioStatus;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/recorder/state/RecorderState;", "", "getStatus", "Lcom/onyx/android/sdk/media/bean/AudioStatus;", "pause", "", "recordingManager", "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "resume", gon.f71290o0, "stop", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface RecorderState {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static void stop(@NotNull RecorderState recorderState, @NotNull AudioRecordManager recordingManager) {
            Intrinsics.checkNotNullParameter(recordingManager, "recordingManager");
            recordingManager.getAudioRecord().stopRecording();
            recordingManager.cancelTimer$sdk_media_release();
            recordingManager.releaseWakeLock$sdk_media_release();
            recordingManager.postRecordChangeEvent$sdk_media_release();
            recordingManager.switchToStopState$sdk_media_release();
            Debug.INSTANCE.m32035d(recorderState.getClass(), "stopRecording", new Object[0]);
        }
    }

    @NotNull
    AudioStatus getStatus();

    void pause(@NotNull AudioRecordManager recordingManager);

    void resume(@NotNull AudioRecordManager recordingManager);

    void start(@NotNull AudioRecordManager recordingManager);

    void stop(@NotNull AudioRecordManager recordingManager);
}
