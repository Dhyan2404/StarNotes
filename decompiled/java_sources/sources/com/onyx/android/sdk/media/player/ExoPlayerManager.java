package com.onyx.android.sdk.media.player;

import android.net.Uri;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.wakelock.OnyxWakeLockHolder;
import com.onyx.android.sdk.base.common.wakelock.WakeLockHolder;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.media.event.MediaItemTransitionEvent;
import com.onyx.android.sdk.media.event.PlayChangeEvent;
import com.onyx.android.sdk.media.event.PlayCompleteEvent;
import com.onyx.android.sdk.media.player.state.PlayerPausedState;
import com.onyx.android.sdk.media.player.state.PlayerPlayingState;
import com.onyx.android.sdk.media.player.state.PlayerState;
import com.onyx.android.sdk.media.player.state.PlayerStoppedState;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 o2\u00020\u0001:\u0001oB\u0007¢\u0006\u0004\bn\u0010;J\u001e\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010\u0013\u001a\u00020\u0012J\u0014\u0010\u0014\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0003J\u001c\u0010\u0019\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u001a\u0010#\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u001dH\u0016J\u0006\u0010$\u001a\u00020\u0003J\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0005J\u0006\u0010'\u001a\u00020\u001dJ\u000e\u0010)\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0005J\u0016\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0005J\u0006\u00100\u001a\u00020/J\u0006\u00101\u001a\u00020/J\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u0006\u00104\u001a\u00020/J\u0006\u00105\u001a\u00020\u0007J\u0006\u00106\u001a\u00020\u0007J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\u0007J\u0006\u00109\u001a\u00020\u0007J\u000f\u0010<\u001a\u00020\u0007H\u0000¢\u0006\u0004\b:\u0010;J\u000f\u0010>\u001a\u00020\u0007H\u0000¢\u0006\u0004\b=\u0010;J\u000f\u0010@\u001a\u00020\u0007H\u0000¢\u0006\u0004\b?\u0010;J\u000f\u0010B\u001a\u00020\u0007H\u0000¢\u0006\u0004\bA\u0010;J\u000e\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020/J\u000f\u0010F\u001a\u00020\u0007H\u0000¢\u0006\u0004\bE\u0010;J\u000f\u0010H\u001a\u00020\u0007H\u0000¢\u0006\u0004\bG\u0010;J\u000f\u0010J\u001a\u00020\u0007H\u0000¢\u0006\u0004\bI\u0010;J\u0017\u0010M\u001a\u00020\u00072\b\u0010L\u001a\u0004\u0018\u00010K¢\u0006\u0004\bM\u0010NR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010PR\u0018\u0010S\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010RR$\u0010Y\u001a\u0004\u0018\u00010\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\b\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u001c\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00030\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010b\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\"\u0010m\u001a\u00020f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bg\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010l¨\u0006p"}, m61528d2 = {"Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", "Lcom/google/android/exoplayer2/Player$Listener;", "", "", "audioList", "", "totalDuration", "", C6998g.f39679a, "c", "b", "e", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "a", "d", "Lcom/onyx/android/sdk/media/player/state/PlayerState;", "state", C6997f.f39671c, "Lcom/google/android/exoplayer2/ExoPlayer;", "getExoPlayer", "addMediaItem", "utteranceId", "Ljava/io/File;", "audioFile", "filePath", "play", "Lcom/google/android/exoplayer2/PlaybackException;", "error", "onPlayerError", "", "playbackState", "onPlaybackStateChanged", "Lcom/google/android/exoplayer2/MediaItem;", "mediaItem", "reason", "onMediaItemTransition", "getCurrentAudioFilePath", "getDuration", "getCurrentPosition", "getCurrentWindowIndex", "msec", "seekTo", FirebaseAnalytics.Param.INDEX, "prevMsec", "prevSeek", "nextMsec", "nextSeek", "", "isOpen", "isClosed", "isPlaying", "isPaused", "isStopped", gon.f71290o0, "pause", "stop", Constants.RESET, "close", "postPlayProgress$sdk_media_release", "()V", "postPlayProgress", "removePlayTimerObserver$sdk_media_release", "removePlayTimerObserver", "acquireWakeLock$sdk_media_release", "acquireWakeLock", "releaseWakeLock$sdk_media_release", "releaseWakeLock", "postEvent", "setPostDurationEvent", "switchToPausedState$sdk_media_release", "switchToPausedState", "switchToPlayingState$sdk_media_release", "switchToPlayingState", "switchToStoppedState$sdk_media_release", "switchToStoppedState", "", "speed", "setPlaybackSpeed", "(Ljava/lang/Float;)V", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "wakeLockHolder", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "playTimerObserver", "Lcom/google/android/exoplayer2/ExoPlayer;", "getExoPlayer$sdk_media_release", "()Lcom/google/android/exoplayer2/ExoPlayer;", "setExoPlayer$sdk_media_release", "(Lcom/google/android/exoplayer2/ExoPlayer;)V", "exoPlayer", C6999h.f39688c, "Lcom/onyx/android/sdk/media/player/state/PlayerState;", "", "i", "Ljava/util/List;", "audioFileList", "j", Constants.HASIDCALL_INDEX_SIG, "postDurationEvent", C4921e.f26537n, "J", "audioDuration", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "l", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setEventBusHolder", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V", "eventBusHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ExoPlayerManager implements Player.Listener {

    /* renamed from: m */
    public static final long f42921m = 1000;

    /* renamed from: n */
    public static final int f42922n = 400;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public RxTimerUtil.TimerObserver playTimerObserver;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ExoPlayer exoPlayer;

    /* renamed from: k, reason: from kotlin metadata */
    public long audioDuration;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: o */
    @NotNull
    public static final ExoPlayerManager f42923o = new ExoPlayerManager();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WakeLockHolder wakeLockHolder = new OnyxWakeLockHolder(false, 1, null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public PlayerState state = new PlayerStoppedState();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<String> audioFileList = new ArrayList();

    /* renamed from: j, reason: from kotlin metadata */
    public boolean postDurationEvent = true;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public EventBusHolder eventBusHolder = new EventBusHolder(null, 1, null);

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/media/player/ExoPlayerManager$Companion;", "", "()V", "PLAY_PROGRESS_EVENT_TIME", "", "RESET_DELAY_TIME", "", "ourInstance", "Lcom/onyx/android/sdk/media/player/ExoPlayerManager;", "getInstance", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExoPlayerManager getInstance() {
            return ExoPlayerManager.f42923o;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final RxTimerUtil.TimerObserver m33503a() {
        if (this.playTimerObserver == null) {
            this.playTimerObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.media.player.ExoPlayerManager$getPlayTimerObserver$1
                @Override // io.reactivex.rxjava3.core.Observer
                public /* bridge */ /* synthetic */ void onNext(Long l) {
                    onNext(l.longValue());
                }

                public void onNext(long aLong) {
                    ExoPlayerManager.this.m33506d();
                }
            };
        }
        RxTimerUtil.TimerObserver timerObserver = this.playTimerObserver;
        Intrinsics.checkNotNull(timerObserver);
        return timerObserver;
    }

    public final void acquireWakeLock$sdk_media_release() {
        this.wakeLockHolder.acquireWakeLock(ResManager.INSTANCE.getAppContext(), ExoPlayerManager.class.getName());
    }

    public final void addMediaItem(@NotNull List<String> audioList) {
        Intrinsics.checkNotNullParameter(audioList, "audioList");
        Iterator<String> it2 = audioList.iterator();
        while (it2.hasNext()) {
            addMediaItem("", new File(it2.next()));
        }
    }

    /* renamed from: b */
    public final void m33504b() {
        stop();
        m33506d();
        m33507e();
    }

    /* renamed from: c */
    public final void m33505c() {
        if (getExoPlayer().getPlayWhenReady()) {
            postPlayProgress$sdk_media_release();
        } else {
            this.state.pause(this);
            m33506d();
        }
        Debug.INSTANCE.m32035d(ExoPlayerManager.class, "player status:" + AnyKt.toSimpleNameString(this.state), new Object[0]);
    }

    public final void close() {
        if (isOpen()) {
            reset();
            ExoPlayer exoPlayer = this.exoPlayer;
            if (exoPlayer != null) {
                exoPlayer.removeListener(this);
            }
            ExoPlayer exoPlayer2 = this.exoPlayer;
            if (exoPlayer2 != null) {
                exoPlayer2.release();
            }
            this.exoPlayer = null;
        }
    }

    /* renamed from: d */
    public final void m33506d() {
        long roundToLong;
        long coerceIn;
        if (this.exoPlayer == null || !this.postDurationEvent) {
            return;
        }
        int currentWindowIndex = getCurrentWindowIndex();
        long currentPosition = getCurrentPosition();
        long duration = getDuration();
        roundToLong = MathKt__MathJVMKt.roundToLong(((float) currentPosition) / 1000.0f);
        coerceIn = RangesKt___RangesKt.coerceIn(currentPosition, Math.min(roundToLong * 1000, duration), duration);
        PlayChangeEvent playChangeEvent = new PlayChangeEvent((int) coerceIn, (int) duration, currentWindowIndex);
        Debug.INSTANCE.m32035d(ExoPlayerManager.class, "PlayChangeEvent:" + playChangeEvent, new Object[0]);
        this.eventBusHolder.post(playChangeEvent);
    }

    /* renamed from: e */
    public final void m33507e() {
        RxTimerUtil.INSTANCE.timer(400L, new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.media.player.ExoPlayerManager$seekToDefaultPosition$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                ExoPlayer exoPlayer = ExoPlayerManager.this.getExoPlayer();
                if (exoPlayer != null) {
                    exoPlayer.setPlayWhenReady(false);
                }
                ExoPlayer exoPlayer2 = ExoPlayerManager.this.getExoPlayer();
                if (exoPlayer2 != null) {
                    exoPlayer2.seekToDefaultPosition(0);
                }
                ExoPlayerManager.this.getEventBusHolder().post(new PlayCompleteEvent());
            }
        });
    }

    /* renamed from: f */
    public final void m33508f(PlayerState state) {
        this.state = state;
    }

    /* renamed from: g */
    public final void m33509g(List<String> audioList, long totalDuration) {
        List<String> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) audioList);
        this.audioFileList = mutableList;
        this.audioDuration = totalDuration;
        addMediaItem(audioList);
    }

    @NotNull
    public final String getCurrentAudioFilePath() {
        ExoPlayer exoPlayer = this.exoPlayer;
        return this.audioFileList.get(exoPlayer != null ? exoPlayer.getCurrentMediaItemIndex() : 0);
    }

    public final long getCurrentPosition() {
        if (isOpen()) {
            return getExoPlayer().getCurrentPosition();
        }
        return 0L;
    }

    public final int getCurrentWindowIndex() {
        if (isOpen()) {
            return getExoPlayer().getCurrentMediaItemIndex();
        }
        return 0;
    }

    public final long getDuration() {
        if (!isOpen()) {
            return 0L;
        }
        long duration = getExoPlayer().getDuration();
        return duration < 0 ? this.audioDuration : duration;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }

    @NotNull
    public final ExoPlayer getExoPlayer() {
        if (this.exoPlayer == null) {
            DefaultExtractorsFactory constantBitrateSeekingEnabled = new DefaultExtractorsFactory().setMp3ExtractorFlags(8).setConstantBitrateSeekingEnabled(true);
            Intrinsics.checkNotNullExpressionValue(constantBitrateSeekingEnabled, "setConstantBitrateSeekingEnabled(...)");
            AudioAttributes build = new AudioAttributes.Builder().setContentType(2).setUsage(1).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            ResManager resManager = ResManager.INSTANCE;
            ExoPlayer build2 = new ExoPlayer.Builder(resManager.getAppContext(), new DefaultMediaSourceFactory(resManager.getAppContext(), constantBitrateSeekingEnabled)).setAudioAttributes(build, true).build();
            this.exoPlayer = build2;
            if (build2 != null) {
                build2.setVolume(1.0f);
            }
            ExoPlayer exoPlayer = this.exoPlayer;
            if (exoPlayer != null) {
                exoPlayer.addListener(this);
            }
        }
        ExoPlayer exoPlayer2 = this.exoPlayer;
        Intrinsics.checkNotNull(exoPlayer2);
        return exoPlayer2;
    }

    @Nullable
    /* renamed from: getExoPlayer$sdk_media_release, reason: from getter */
    public final ExoPlayer getExoPlayer() {
        return this.exoPlayer;
    }

    public final boolean isClosed() {
        return this.exoPlayer == null;
    }

    public final boolean isOpen() {
        return this.exoPlayer != null;
    }

    public final boolean isPaused() {
        return isOpen() && (this.state instanceof PlayerPausedState);
    }

    public final boolean isPlaying() {
        return isOpen() && getExoPlayer().isPlaying();
    }

    public final boolean isStopped() {
        return isClosed() || (this.state instanceof PlayerStoppedState);
    }

    public final void nextSeek(long nextMsec) {
        if (isOpen()) {
            seekTo(Math.min(getExoPlayer().getCurrentPosition() + nextMsec, getDuration()));
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onMediaItemTransition(@Nullable MediaItem mediaItem, int reason) {
        super.onMediaItemTransition(mediaItem, reason);
        this.eventBusHolder.post(new MediaItemTransitionEvent(mediaItem, reason));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlaybackStateChanged(int playbackState) {
        Debug.INSTANCE.m32052i(ExoPlayerManager.class, "playbackState: " + playbackState, new Object[0]);
        if (playbackState == 3) {
            m33505c();
        } else {
            if (playbackState != 4) {
                return;
            }
            m33504b();
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlayerError(@NotNull PlaybackException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.state.stop(this);
        Debug.INSTANCE.m32045e(ExoPlayerManager.class, error);
    }

    public final void pause() {
        this.state.pause(this);
    }

    public final void play(@NotNull String filePath) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(filePath);
        play(listOf, 0L);
    }

    public final void postPlayProgress$sdk_media_release() {
        removePlayTimerObserver$sdk_media_release();
        RxTimerUtil.INSTANCE.timer(0L, 1000L, m33503a());
    }

    public final void prevSeek(long prevMsec) {
        if (isOpen()) {
            seekTo(Math.max(getExoPlayer().getCurrentPosition() - prevMsec, 0L));
        }
    }

    public final void releaseWakeLock$sdk_media_release() {
        this.wakeLockHolder.releaseWakeLock();
    }

    public final void removePlayTimerObserver$sdk_media_release() {
        RxTimerUtil.INSTANCE.cancel(this.playTimerObserver);
    }

    public final void reset() {
        stop();
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            exoPlayer.clearMediaItems();
        }
        this.audioFileList.clear();
        this.audioDuration = 0L;
    }

    public final void seekTo(long msec) {
        seekTo(getCurrentWindowIndex(), msec);
    }

    public final void setEventBusHolder(@NotNull EventBusHolder eventBusHolder) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "<set-?>");
        this.eventBusHolder = eventBusHolder;
    }

    public final void setExoPlayer$sdk_media_release(@Nullable ExoPlayer exoPlayer) {
        this.exoPlayer = exoPlayer;
    }

    public final void setPlaybackSpeed(@Nullable Float speed) {
        ExoPlayer exoPlayer;
        if (speed == null || (exoPlayer = this.exoPlayer) == null) {
            return;
        }
        exoPlayer.setPlaybackSpeed(speed.floatValue());
    }

    public final void setPostDurationEvent(boolean postEvent) {
        this.postDurationEvent = postEvent;
    }

    public final void start() {
        this.state.start(this);
    }

    public final void stop() {
        this.state.stop(this);
    }

    public final void switchToPausedState$sdk_media_release() {
        m33508f(new PlayerPausedState());
    }

    public final void switchToPlayingState$sdk_media_release() {
        m33508f(new PlayerPlayingState());
    }

    public final void switchToStoppedState$sdk_media_release() {
        m33508f(new PlayerStoppedState());
    }

    public final void play(@NotNull List<String> audioList, long totalDuration) {
        Intrinsics.checkNotNullParameter(audioList, "audioList");
        Debug.INSTANCE.m32052i(ExoPlayerManager.class, "play file:" + audioList, new Object[0]);
        close();
        m33509g(audioList, totalDuration);
        start();
    }

    public final void seekTo(int index, long msec) {
        if (isOpen()) {
            ExoPlayer exoPlayer = this.exoPlayer;
            if (exoPlayer != null) {
                exoPlayer.seekTo(index, msec);
            }
            ExoPlayer exoPlayer2 = this.exoPlayer;
            if (exoPlayer2 == null) {
                return;
            }
            exoPlayer2.setPlayWhenReady(this.state instanceof PlayerPlayingState);
        }
    }

    @NotNull
    public final ExoPlayerManager addMediaItem(@NotNull String utteranceId, @NotNull File audioFile) {
        Intrinsics.checkNotNullParameter(utteranceId, "utteranceId");
        Intrinsics.checkNotNullParameter(audioFile, "audioFile");
        MediaItem build = new MediaItem.Builder().setUri(Uri.fromFile(audioFile)).setMediaId(utteranceId).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        getExoPlayer().addMediaItem(build);
        return this;
    }
}
