package com.onyx.galaxy.note.editor.viewmodel;

import android.widget.SeekBar;
import androidx.core.app.NotificationCompat;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableInt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.media.event.MediaItemTransitionEvent;
import com.onyx.android.sdk.media.event.PlayChangeEvent;
import com.onyx.android.sdk.media.event.PlayCompleteEvent;
import com.onyx.android.sdk.media.player.ExoPlayerManager;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.editor.data.PlaySpeedType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00102\u001a\u00020-¢\u0006\u0004\bk\u0010lJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001d\u001a\u00020\u0007J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH\u0007J\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020#H\u0007J\u0006\u0010%\u001a\u00020\u0007J\u0006\u0010&\u001a\u00020\u0007J\u000e\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020*J\u000e\u0010,\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u0015R\u0017\u00102\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R(\u0010B\u001a\b\u0012\u0004\u0012\u00020*0;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR0\u0010G\u001a\u0010\u0012\f\u0012\n C*\u0004\u0018\u00010*0*0;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010=\u001a\u0004\bE\u0010?\"\u0004\bF\u0010AR0\u0010K\u001a\u0010\u0012\f\u0012\n C*\u0004\u0018\u00010*0*0;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010=\u001a\u0004\bI\u0010?\"\u0004\bJ\u0010AR(\u0010O\u001a\b\u0012\u0004\u0012\u00020\u001a0;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010=\u001a\u0004\bM\u0010?\"\u0004\bN\u0010AR\"\u0010R\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u00105\u001a\u0004\bQ\u00107\"\u0004\b,\u00109R\"\u0010U\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u00105\u001a\u0004\bT\u00107\"\u0004\b(\u00109R0\u0010Z\u001a\u0010\u0012\f\u0012\n C*\u0004\u0018\u00010V0V0;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010=\u001a\u0004\bX\u0010?\"\u0004\bY\u0010AR\"\u0010a\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u0017\u0010g\u001a\u00020b8\u0006¢\u0006\f\n\u0004\bc\u0010d\u001a\u0004\be\u0010fR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010i¨\u0006m"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", "d", "Lio/reactivex/rxjava3/functions/Consumer;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setStatusChangedListener", "isPlaying", "isPaused", "isOpen", "isStopped", "pause", "stop", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "seekTo", "", FirebaseAnalytics.Param.INDEX, "seekToPosition", "", "msec", "setPlaybackSpeed", "resumePlay", "startPlay", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "audioData", "updateAudioInfo", "updateStatus", "Lcom/onyx/android/sdk/media/event/PlayChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onPlayChangeEvent", "Lcom/onyx/android/sdk/media/event/PlayCompleteEvent;", "onPlayCompleteEvent", "Lcom/onyx/android/sdk/media/event/MediaItemTransitionEvent;", "onMediaItemTransitionEvent", "onStart", "destroy", "value", "setCurrentPosition", "getCurrentPotion", "", "getCurrentTime", "setDuration", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroidx/databinding/ObservableInt;", "j", "Landroidx/databinding/ObservableInt;", "getPlayIcon", "()Landroidx/databinding/ObservableInt;", "setPlayIcon", "(Landroidx/databinding/ObservableInt;)V", "playIcon", "Landroidx/databinding/ObservableField;", C4921e.f26537n, "Landroidx/databinding/ObservableField;", "getPlayStatus", "()Landroidx/databinding/ObservableField;", "setPlayStatus", "(Landroidx/databinding/ObservableField;)V", "playStatus", "kotlin.jvm.PlatformType", "l", "getPlayTime", "setPlayTime", "playTime", "m", "getPlayingTime", "setPlayingTime", "playingTime", GoogleApiAvailabilityLight.f29016b, "getAudioDataSet", "setAudioDataSet", "audioDataSet", C4921e.f26528e, "getDuration", "duration", "p", "getCurrentPosition", "currentPosition", "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;", "q", "getPlaySpeed", "setPlaySpeed", "playSpeed", "r", Constants.HASIDCALL_INDEX_SIG, "getChangeMediaItemStop", Constants.BOOLEAN_VALUE_SIG, "setChangeMediaItemStop", "(Z)V", "changeMediaItemStop", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "s", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "getOnMediaSeekChangeListener", "()Landroid/widget/SeekBar$OnSeekBarChangeListener;", "onMediaSeekChangeListener", "t", "Lio/reactivex/rxjava3/functions/Consumer;", "statusChangedListener", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PlayerViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ObservableInt playIcon;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> playStatus;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> playTime;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ObservableField<String> playingTime;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public ObservableField<AudioDataSet> audioDataSet;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public ObservableInt duration;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public ObservableInt currentPosition;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public ObservableField<PlaySpeedType> playSpeed;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean changeMediaItemStop;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final SeekBar.OnSeekBarChangeListener onMediaSeekChangeListener;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Consumer<Boolean> statusChangedListener;

    public PlayerViewModel(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.playIcon = new ObservableInt(C10651R.drawable.ic_play);
        this.playStatus = new ObservableField<>(ResManager.INSTANCE.getString(C10651R.string.play));
        this.playTime = new ObservableField<>("00:00");
        this.playingTime = new ObservableField<>("00:00");
        this.audioDataSet = new ObservableField<>();
        this.duration = new ObservableInt(0);
        this.currentPosition = new ObservableInt(0);
        this.playSpeed = new ObservableField<>(PlaySpeedType.ONE);
        this.onMediaSeekChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.onyx.galaxy.note.editor.viewmodel.PlayerViewModel$onMediaSeekChangeListener$1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(@NotNull SeekBar seekBar, int progress, boolean fromUser) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
                if (fromUser) {
                    PlayerViewModel.this.setChangeMediaItemStop(false);
                    PlayerViewModel.this.seekTo(progress);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(@NotNull SeekBar seekBar) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(@NotNull SeekBar seekBar) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            }
        };
        onStart();
    }

    /* renamed from: d */
    public final ExoPlayerManager m50422d() {
        return this.editorBundle.getMediaBundle().getMediaPlayManager();
    }

    public final void destroy() {
        m50422d().getEventBusHolder().unRegister(this);
    }

    @NotNull
    public final ObservableField<AudioDataSet> getAudioDataSet() {
        return this.audioDataSet;
    }

    public final boolean getChangeMediaItemStop() {
        return this.changeMediaItemStop;
    }

    @NotNull
    public final ObservableInt getCurrentPosition() {
        return this.currentPosition;
    }

    public final int getCurrentPotion() {
        return this.currentPosition.get();
    }

    @NotNull
    public final String getCurrentTime() {
        return DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, getCurrentPotion(), false, null, null, 12, null);
    }

    @NotNull
    public final ObservableInt getDuration() {
        return this.duration;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final SeekBar.OnSeekBarChangeListener getOnMediaSeekChangeListener() {
        return this.onMediaSeekChangeListener;
    }

    @NotNull
    public final ObservableInt getPlayIcon() {
        return this.playIcon;
    }

    @NotNull
    public final ObservableField<PlaySpeedType> getPlaySpeed() {
        return this.playSpeed;
    }

    @NotNull
    public final ObservableField<String> getPlayStatus() {
        return this.playStatus;
    }

    @NotNull
    public final ObservableField<String> getPlayTime() {
        return this.playTime;
    }

    @NotNull
    public final ObservableField<String> getPlayingTime() {
        return this.playingTime;
    }

    public final boolean isOpen() {
        return m50422d().isOpen();
    }

    public final boolean isPaused() {
        return m50422d().isPaused();
    }

    public final boolean isPlaying() {
        return m50422d().isPlaying();
    }

    public final boolean isStopped() {
        return m50422d().isStopped();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMediaItemTransitionEvent(@NotNull MediaItemTransitionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.changeMediaItemStop) {
            this.changeMediaItemStop = false;
            pause();
            updateStatus();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPlayChangeEvent(@NotNull PlayChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AudioDataSet audioDataSet = this.audioDataSet.get();
        if (audioDataSet == null) {
            return;
        }
        setCurrentPosition(event.getCurrentPosition() + audioDataSet.getPositionOffset(event.getCurrentWindowIndex()));
        updateStatus();
        RxjavaKt.acceptSafety(this.statusChangedListener, Boolean.valueOf(isPlaying()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPlayCompleteEvent(@NotNull PlayCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        updateStatus();
        RxjavaKt.acceptSafety(this.statusChangedListener, Boolean.valueOf(isPlaying()));
        setCurrentPosition(this.duration.get());
    }

    public final void onStart() {
        m50422d().getEventBusHolder().register(this);
    }

    public final void pause() {
        if (isPlaying()) {
            m50422d().pause();
        }
    }

    public final void resumePlay() {
        if (isPlaying()) {
            return;
        }
        if (m50422d().isPaused()) {
            m50422d().start();
        } else {
            startPlay();
        }
    }

    public final void seekTo(@NotNull AudioInfoBean audioInfoBean) {
        int index;
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        AudioDataSet audioDataSet = this.audioDataSet.get();
        if (audioDataSet == null || (index = audioDataSet.getIndex(audioInfoBean)) < 0) {
            return;
        }
        resumePlay();
        seekToPosition(index);
        RxTimerUtil.INSTANCE.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.PlayerViewModel$seekTo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                PlayerViewModel.this.setChangeMediaItemStop(true);
            }
        });
    }

    public final void seekToPosition(int index) {
        if (!isOpen() || isStopped()) {
            startPlay();
        }
        if (this.audioDataSet.get() == null) {
            return;
        }
        m50422d().seekTo(index, 0L);
    }

    public final void setAudioDataSet(@NotNull ObservableField<AudioDataSet> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.audioDataSet = observableField;
    }

    public final void setChangeMediaItemStop(boolean z) {
        this.changeMediaItemStop = z;
    }

    public final void setCurrentPosition(@NotNull ObservableInt observableInt) {
        Intrinsics.checkNotNullParameter(observableInt, "<set-?>");
        this.currentPosition = observableInt;
    }

    public final void setDuration(@NotNull ObservableInt observableInt) {
        Intrinsics.checkNotNullParameter(observableInt, "<set-?>");
        this.duration = observableInt;
    }

    public final void setPlayIcon(@NotNull ObservableInt observableInt) {
        Intrinsics.checkNotNullParameter(observableInt, "<set-?>");
        this.playIcon = observableInt;
    }

    public final void setPlaySpeed(@NotNull ObservableField<PlaySpeedType> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.playSpeed = observableField;
    }

    public final void setPlayStatus(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.playStatus = observableField;
    }

    public final void setPlayTime(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.playTime = observableField;
    }

    public final void setPlaybackSpeed() {
        ObservableField<PlaySpeedType> observableField = this.playSpeed;
        observableField.set(PlaySpeedType.INSTANCE.toggleSpeedType(observableField.get()));
        ExoPlayerManager m50422d = m50422d();
        PlaySpeedType playSpeedType = this.playSpeed.get();
        m50422d.setPlaybackSpeed(playSpeedType != null ? Float.valueOf(playSpeedType.getSpeed()) : null);
    }

    public final void setPlayingTime(@NotNull ObservableField<String> observableField) {
        Intrinsics.checkNotNullParameter(observableField, "<set-?>");
        this.playingTime = observableField;
    }

    public final void setStatusChangedListener(@NotNull Consumer<Boolean> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.statusChangedListener = listener;
    }

    public final void startPlay() {
        AudioDataSet audioDataSet = this.audioDataSet.get();
        if (audioDataSet == null) {
            return;
        }
        m50422d().play(audioDataSet.getAudioPathList(), audioDataSet.getDuration());
        ExoPlayerManager m50422d = m50422d();
        PlaySpeedType playSpeedType = this.playSpeed.get();
        m50422d.setPlaybackSpeed(playSpeedType != null ? Float.valueOf(playSpeedType.getSpeed()) : null);
    }

    public final void stop() {
        m50422d().close();
        setCurrentPosition(0);
    }

    public final void updateAudioInfo(@NotNull AudioDataSet audioData) {
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        this.audioDataSet.set(audioData);
        setDuration(audioData.getDuration());
    }

    public final void updateStatus() {
        boolean isPlaying = isPlaying();
        this.playIcon.set(isPlaying ? C10651R.drawable.ic_media_pause : C10651R.drawable.ic_media_play);
        this.playStatus.set(ResManager.INSTANCE.getString(isPlaying ? C10651R.string.pause : C10651R.string.play));
        notifyChange();
    }

    public final void setCurrentPosition(int value) {
        this.currentPosition.set(value);
        ObservableField<String> observableField = this.playingTime;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        observableField.set(DateTimeUtil.formatDurationSecondRoundUp$default(dateTimeUtil, value, false, null, null, 12, null));
        this.playTime.set(this.playingTime.get() + '/' + DateTimeUtil.formatDurationSecondRoundUp$default(dateTimeUtil, this.duration.get(), false, null, null, 12, null));
    }

    public final void setDuration(long value) {
        this.duration.set((int) value);
        notifyChange();
    }

    public final void seekTo(long msec) {
        if (!isOpen() || isStopped()) {
            startPlay();
        }
        if (this.audioDataSet.get() == null) {
            return;
        }
        AudioDataSet audioDataSet = this.audioDataSet.get();
        Intrinsics.checkNotNull(audioDataSet);
        int index = audioDataSet.getIndex(msec);
        if (index > 0) {
            Intrinsics.checkNotNull(this.audioDataSet.get());
            msec = RangesKt___RangesKt.coerceAtLeast(0L, msec - r1.getPositionOffset(index));
        }
        m50422d().seekTo(index, msec);
    }
}
