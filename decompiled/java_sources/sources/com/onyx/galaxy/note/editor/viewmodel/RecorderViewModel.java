package com.onyx.galaxy.note.editor.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableInt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.media.event.RecordChangeEvent;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.action.audio.StartRecorderAction;
import com.onyx.galaxy.note.editor.service.RecordService;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00102\u001a\u00020-¢\u0006\u0004\bH\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0014\u0010\u0010\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000eJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\b\u0010\u0014\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0007J\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0010\u0010 \u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0015J\u0006\u0010#\u001a\u00020\u0015J\u0006\u0010$\u001a\u00020\u0015J\u0006\u0010%\u001a\u00020\u0015J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u0004J\u0010\u0010*\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010\u0006J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004R\u0017\u00102\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\"\u0010\f\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b\u0012\u00106\"\u0004\b\u0011\u00107R0\u0010@\u001a\u0010\u0012\f\u0012\n 9*\u0004\u0018\u00010\u00060\u0006088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010D\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u00105\u001a\u0004\bB\u00106\"\u0004\bC\u00107R\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006J"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "value", "", C6997f.f39671c, "", "text", C6998g.f39679a, "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "d", "id", "duration", "e", "Lio/reactivex/rxjava3/functions/Consumer;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setTimeChangedListener", "setDuration", "getDuration", "resetDuration", "getTimeString", "", "accept", "setAcceptAudioData", "Lcom/onyx/android/sdk/media/event/RecordChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onRecordChangeEvent", "getRecordFilePath", "", "getRecordDuration", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "updateAudioInfoBean", "isClosed", "isRecording", "isStopped", "isPlaying", "isPaused", "pause", "resume", "stop", "audioPath", "startRecorder", "onStart", "destroy", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroidx/databinding/ObservableInt;", "j", "Landroidx/databinding/ObservableInt;", "()Landroidx/databinding/ObservableInt;", "(Landroidx/databinding/ObservableInt;)V", "Landroidx/databinding/ObservableField;", "kotlin.jvm.PlatformType", C4921e.f26537n, "Landroidx/databinding/ObservableField;", "getTime", "()Landroidx/databinding/ObservableField;", "setTime", "(Landroidx/databinding/ObservableField;)V", "time", "l", "getRecordIcon", "setRecordIcon", "recordIcon", "m", "Lio/reactivex/rxjava3/functions/Consumer;", "timeChangedListener", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RecorderViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ObservableInt duration;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> time;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ObservableInt recordIcon;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Consumer<String> timeChangedListener;

    public RecorderViewModel(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.duration = new ObservableInt(0);
        this.time = new ObservableField<>("00:00");
        this.recordIcon = new ObservableInt(C10651R.drawable.ic_note_recording_circle);
        onStart();
    }

    /* renamed from: d */
    public final AudioRecordManager m50423d() {
        return this.editorBundle.getMediaBundle().getRecorderManager();
    }

    public final void destroy() {
        m50423d().getEventBusHolder().unRegister(this);
    }

    /* renamed from: e */
    public final void m50424e(String id, int duration) {
        Map mutableMapOf;
        EditorBundle editorBundle = this.editorBundle;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_AUDIO_RECORD_ID, id), TuplesKt.m61535to(OnyxStatisticConstant.KEY_DURATION, Long.valueOf(DateTimeUtil.INSTANCE.msToSecLong(duration))));
        StatisticsExtKt.reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_AUDIO_RECORD_DONE, mutableMapOf);
    }

    /* renamed from: f */
    public final void m50425f(int value) {
        m50426g(DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, value, false, null, null, 12, null));
        Consumer<String> consumer = this.timeChangedListener;
        if (consumer != null) {
            RxjavaKt.acceptSafety(consumer, StringKt.safelyGetStr(this.time.get()));
        }
    }

    /* renamed from: g */
    public final void m50426g(String text) {
        this.time.set(text);
        notifyChange();
    }

    @NotNull
    public final ObservableInt getDuration() {
        return this.duration;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final long getRecordDuration() {
        return m50423d().getRecordDuration();
    }

    @NotNull
    public final String getRecordFilePath() {
        return m50423d().getRecordFilePath();
    }

    @NotNull
    public final ObservableInt getRecordIcon() {
        return this.recordIcon;
    }

    @NotNull
    public final ObservableField<String> getTime() {
        return this.time;
    }

    @Nullable
    public final String getTimeString() {
        return this.time.get();
    }

    public final boolean isClosed() {
        return m50423d().isClosed();
    }

    public final boolean isPaused() {
        return m50423d().isPaused();
    }

    public final boolean isPlaying() {
        return m50423d().isPlaying();
    }

    public final boolean isRecording() {
        return isPlaying() || isPaused();
    }

    public final boolean isStopped() {
        return m50423d().isStopped();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecordChangeEvent(@NotNull RecordChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int duration = this.duration.get() + event.getDuration();
        if (isPlaying()) {
            this.recordIcon.set(C10651R.drawable.ic_media_pause);
            m50425f(duration);
            return;
        }
        if (isPaused() || isStopped()) {
            m50424e(event.getRecordId(), duration);
        }
        if (!isPaused()) {
            setDuration(duration);
        } else {
            this.recordIcon.set(C10651R.drawable.ic_media_start);
            m50426g(ResManager.INSTANCE.getString(C10651R.string.record));
        }
    }

    public final void onStart() {
        m50423d().getEventBusHolder().register(this);
    }

    public final void pause() {
        m50423d().pauseRecording();
    }

    public final void resetDuration() {
        this.duration.set(0);
    }

    public final void resume() {
        m50423d().resumeRecording();
    }

    public final void setAcceptAudioData(boolean accept) {
        m50423d().setAcceptAudioData(accept);
    }

    public final void setDuration(@NotNull ObservableInt observableInt) {
        Intrinsics.checkNotNullParameter(observableInt, "<set-?>");
        this.duration = observableInt;
    }

    public final void setRecordIcon(@NotNull ObservableInt observableInt) {
        Intrinsics.checkNotNullParameter(observableInt, "<set-?>");
        this.recordIcon = observableInt;
    }

    public final void setTime(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.time = observableField;
    }

    public final void setTimeChangedListener(@NotNull Consumer<String> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.timeChangedListener = listener;
    }

    public final void startRecorder(@Nullable String audioPath) {
        RecordService.INSTANCE.startService(ResManager.INSTANCE.getAppContext());
        new StartRecorderAction(this.editorBundle).setAudioFilePath(audioPath).build().subscribe();
    }

    public final void stop() {
        m50423d().stopRecording();
        RecordService.INSTANCE.stopService(ResManager.INSTANCE.getAppContext());
    }

    public final void updateAudioInfoBean(@Nullable AudioInfoBean audioInfoBean) {
        if (audioInfoBean != null) {
            audioInfoBean.setAudioPath(getRecordFilePath());
            audioInfoBean.setDuration(audioInfoBean.getDuration() + getRecordDuration());
            audioInfoBean.setCreationTime(System.currentTimeMillis());
        }
    }

    public final int getDuration() {
        return this.duration.get();
    }

    public final void setDuration(int value) {
        this.duration.set(value);
        m50425f(this.duration.get());
        if (value > 0) {
            this.recordIcon.set(C10651R.drawable.ic_media_start);
        }
    }
}
