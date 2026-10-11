package com.onyx.android.sdk.media.recorder;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.wakelock.OnyxWakeLockHolder;
import com.onyx.android.sdk.base.common.wakelock.WakeLockHolder;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.account.bean.AccountQuotas;
import com.onyx.android.sdk.media.bean.AudioDataBean;
import com.onyx.android.sdk.media.bean.AudioStatus;
import com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder;
import com.onyx.android.sdk.media.codec.encoder.IAudioEncoder;
import com.onyx.android.sdk.media.config.RecordingConfig;
import com.onyx.android.sdk.media.event.PlayStatusChangeEvent;
import com.onyx.android.sdk.media.event.RecordChangeEvent;
import com.onyx.android.sdk.media.recorder.AudioRecordManager;
import com.onyx.android.sdk.media.recorder.state.RecorderPausedState;
import com.onyx.android.sdk.media.recorder.state.RecorderRecordingState;
import com.onyx.android.sdk.media.recorder.state.RecorderState;
import com.onyx.android.sdk.media.recorder.state.RecorderStoppedState;
import com.onyx.android.sdk.media.utils.EncodeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 h2\u00020\u0001:\u0001hB\u0007¢\u0006\u0004\bg\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0004J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u001aJ\u000f\u0010%\u001a\u00020\u0004H\u0000¢\u0006\u0004\b#\u0010$J\u000f\u0010'\u001a\u00020\u0004H\u0000¢\u0006\u0004\b&\u0010$J\u0006\u0010)\u001a\u00020(J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020\u001aJ\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aJ\u000f\u00102\u001a\u00020\u0004H\u0000¢\u0006\u0004\b1\u0010$J\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001aJ\u000f\u00106\u001a\u00020\u0004H\u0000¢\u0006\u0004\b5\u0010$J\u000f\u00108\u001a\u00020\u0004H\u0000¢\u0006\u0004\b7\u0010$J\u000f\u0010:\u001a\u00020\u0004H\u0000¢\u0006\u0004\b9\u0010$J\u000f\u0010<\u001a\u00020\u0004H\u0000¢\u0006\u0004\b;\u0010$J\u000f\u0010>\u001a\u00020\u0004H\u0000¢\u0006\u0004\b=\u0010$R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010IR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010NR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010PR\"\u0010X\u001a\u00020R8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010_\u001a\u00020Y8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\"\u0010f\u001a\u00020`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010e¨\u0006i"}, m61528d2 = {"Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "", "Lcom/onyx/android/sdk/media/config/RecordingConfig;", AbstractLogger.CONFIG, "", C4921e.f26537n, C4921e.f26528e, "j", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "e", "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;", "state", C6997f.f39671c, "c", "", HttpHeaderValues.BYTES, "m", "l", "p", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", C6999h.f39688c, "", C6998g.f39679a, "r", "", "acceptAudioData", "setAcceptAudioData", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "startRecording", "pauseRecording", "resumeRecording", "stopRecording", "cancelTimer$sdk_media_release", "()V", "cancelTimer", "startTimer$sdk_media_release", "startTimer", "", "getRecordDuration", "", "getRecordFilePath", "isOpen", "isClosed", "isPlaying", "isPaused", "isStopped", "postRecordChangeEvent$sdk_media_release", "postRecordChangeEvent", "postDurationEvent", "setPostDurationEvent", "acquireWakeLock$sdk_media_release", "acquireWakeLock", "releaseWakeLock$sdk_media_release", "releaseWakeLock", "switchToRecordingState$sdk_media_release", "switchToRecordingState", "switchToPauseState$sdk_media_release", "switchToPauseState", "switchToStopState$sdk_media_release", "switchToStopState", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "a", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "wakeLockHolder", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "b", "Lkotlin/Lazy;", "i", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "recordingScheduler", "Lcom/onyx/android/sdk/media/recorder/state/RecorderState;", "Lio/reactivex/rxjava3/subjects/Subject;", "d", "Lio/reactivex/rxjava3/subjects/Subject;", "stateSubject", "Lcom/onyx/android/sdk/media/config/RecordingConfig;", "recordingConfig", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "recordChangeObserver", "Lcom/onyx/android/sdk/media/recorder/AudioRecorder;", "Lcom/onyx/android/sdk/media/recorder/AudioRecorder;", "getAudioRecord$sdk_media_release", "()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;", "setAudioRecord$sdk_media_release", "(Lcom/onyx/android/sdk/media/recorder/AudioRecorder;)V", AccountQuotas.KEY_QUOTAS_AUDIO_RECORD, "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "getAudioEncoder$sdk_media_release", "()Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "setAudioEncoder$sdk_media_release", "(Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;)V", "audioEncoder", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setEventBusHolder", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V", "eventBusHolder", Constants.CONSTRUCTOR_NAME, "Companion", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AudioRecordManager {

    /* renamed from: j */
    public static final float f42937j = 32768.0f;

    /* renamed from: k */
    public static final long f42938k = 100;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WakeLockHolder wakeLockHolder = new OnyxWakeLockHolder(false, 1, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy recordingScheduler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RecorderState state;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Subject<RecorderState> stateSubject;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RecordingConfig recordingConfig;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public RxTimerUtil.TimerObserver recordChangeObserver;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public AudioRecorder audioRecord;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public IAudioEncoder audioEncoder;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public EventBusHolder eventBusHolder;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: l */
    @NotNull
    public static final AudioRecordManager f42939l = new AudioRecordManager();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$Companion;", "", "()V", "MAX_AMPLITUDE_VALUE", "", "RECORDING_READ_REPEAT_TIME", "", "ourInstance", "Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;", "getInstance", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AudioRecordManager getInstance() {
            return AudioRecordManager.f42939l;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AudioStatus.values().length];
            try {
                iArr[AudioStatus.STATUS_PLAYING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$a */
    /* loaded from: classes7.dex */
    public static final class C7476a<T> implements Predicate {
        public C7476a() {
        }

        /* renamed from: a */
        public final boolean m33529a(long j) {
            return AudioRecordManager.this.isPlaying();
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m33529a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$b */
    /* loaded from: classes7.dex */
    public static final class C7477b<T, R> implements Function {
        public C7477b() {
        }

        @NotNull
        /* renamed from: a */
        public final byte[] m33530a(long j) {
            return AudioRecordManager.this.getAudioRecord().readAudioChunk();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m33530a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$c */
    /* loaded from: classes7.dex */
    public static final class C7478c<T, R> implements Function {
        public C7478c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AudioDataBean apply(@NotNull byte[] it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AudioRecordManager.this.m33524m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$d */
    /* loaded from: classes7.dex */
    public static final class C7479d<T, R> implements Function {
        public C7479d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AudioDataBean> apply(@NotNull RecorderState it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AudioRecordManager.this.m33517f(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$e */
    /* loaded from: classes7.dex */
    public static final class C7480e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RecordingConfig f42954f;

        public C7480e(RecordingConfig recordingConfig) {
            this.f42954f = recordingConfig;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AudioRecordManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AudioRecordManager.this.m33522k(this.f42954f);
        }
    }

    /* renamed from: com.onyx.android.sdk.media.recorder.AudioRecordManager$f */
    /* loaded from: classes7.dex */
    public static final class C7481f<T, R> implements Function {
        public C7481f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AudioDataBean> apply(@NotNull AudioRecordManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AudioRecordManager.this.m33516e();
        }
    }

    public AudioRecordManager() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.media.recorder.AudioRecordManager$recordingScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        this.recordingScheduler = lazy;
        this.state = new RecorderStoppedState();
        this.audioRecord = new AudioRecorder();
        this.audioEncoder = new DefaultAudioEncoder();
        this.eventBusHolder = new EventBusHolder(null, 1, null);
    }

    /* renamed from: d */
    public static final void m33513d(AudioRecordManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Debug.INSTANCE.m32052i(this$0.getClass(), "activeRecordingStream finished", new Object[0]);
    }

    /* renamed from: q */
    public static final void m33514q(AudioRecordManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m33523l();
    }

    public final void acquireWakeLock$sdk_media_release() {
        this.wakeLockHolder.acquireWakeLock(ResManager.INSTANCE.getAppContext(), AudioRecordManager.class.getName());
    }

    /* renamed from: c */
    public final Observable<AudioDataBean> m33515c() {
        Observable<AudioDataBean> doFinally = Observable.interval(100L, TimeUnit.MILLISECONDS, getObserveOn()).filter(new C7476a()).map(new C7477b()).map(new C7478c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ci
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AudioRecordManager.m33513d(AudioRecordManager.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void cancelTimer$sdk_media_release() {
        RxTimerUtil.INSTANCE.cancel(this.recordChangeObserver);
    }

    /* renamed from: e */
    public final Observable<AudioDataBean> m33516e() {
        Subject<RecorderState> subject = this.stateSubject;
        Intrinsics.checkNotNull(subject);
        Observable switchMap = subject.observeOn(getObserveOn()).distinctUntilChanged().switchMap(new C7479d());
        Intrinsics.checkNotNullExpressionValue(switchMap, "switchMap(...)");
        return switchMap;
    }

    /* renamed from: f */
    public final Observable<AudioDataBean> m33517f(RecorderState state) {
        Debug.INSTANCE.m32052i(AudioRecordManager.class, "audio state changed: " + state, new Object[0]);
        if (WhenMappings.$EnumSwitchMapping$0[state.getStatus().ordinal()] == 1) {
            return m33515c();
        }
        Observable<AudioDataBean> empty = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
        return empty;
    }

    /* renamed from: g */
    public final int m33518g() {
        return this.audioRecord.getMaxAmplitude();
    }

    @NotNull
    /* renamed from: getAudioEncoder$sdk_media_release, reason: from getter */
    public final IAudioEncoder getAudioEncoder() {
        return this.audioEncoder;
    }

    @NotNull
    /* renamed from: getAudioRecord$sdk_media_release, reason: from getter */
    public final AudioRecorder getAudioRecord() {
        return this.audioRecord;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m33520i().getObserveOn();
    }

    public final long getRecordDuration() {
        return this.audioEncoder.getRecordTimeDurationInMs();
    }

    @NotNull
    public final String getRecordFilePath() {
        RecordingConfig recordingConfig = this.recordingConfig;
        String filePath = recordingConfig != null ? recordingConfig.getFilePath() : null;
        return filePath == null ? "" : filePath;
    }

    /* renamed from: h */
    public final RxTimerUtil.TimerObserver m33519h() {
        if (this.recordChangeObserver == null) {
            this.recordChangeObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.media.recorder.AudioRecordManager$getRecordChangeObserver$1

                /* renamed from: e, reason: from kotlin metadata */
                public long recordDuration;

                {
                    this.recordDuration = AudioRecordManager.this.getRecordDuration();
                }

                @Override // io.reactivex.rxjava3.core.Observer
                public /* bridge */ /* synthetic */ void onNext(Long l) {
                    onNext(l.longValue());
                }

                public void onNext(long t) {
                    Long valueOf = Long.valueOf(AudioRecordManager.this.getRecordDuration());
                    if (!(valueOf.longValue() != this.recordDuration)) {
                        valueOf = null;
                    }
                    if (valueOf != null) {
                        AudioRecordManager audioRecordManager = AudioRecordManager.this;
                        long longValue = valueOf.longValue();
                        audioRecordManager.postRecordChangeEvent$sdk_media_release();
                        this.recordDuration = longValue;
                    }
                }
            };
        }
        RxTimerUtil.TimerObserver timerObserver = this.recordChangeObserver;
        Intrinsics.checkNotNull(timerObserver);
        return timerObserver;
    }

    /* renamed from: i */
    public final RxScheduler m33520i() {
        return (RxScheduler) this.recordingScheduler.getValue();
    }

    public final boolean isClosed() {
        return !isOpen();
    }

    public final boolean isOpen() {
        return this.audioRecord.isOpen();
    }

    public final boolean isPaused() {
        return isOpen() && this.state.getStatus() == AudioStatus.STATUS_PAUSE;
    }

    public final boolean isPlaying() {
        return isOpen() && this.state.getStatus() == AudioStatus.STATUS_PLAYING;
    }

    public final boolean isStopped() {
        return isClosed() || this.state.getStatus() == AudioStatus.STATUS_STOP;
    }

    /* renamed from: j */
    public final void m33521j(RecordingConfig config) {
        IAudioEncoder encoderByMine = EncodeUtils.INSTANCE.getEncoderByMine(config.getFormatConfig());
        this.audioEncoder = encoderByMine;
        encoderByMine.init(config);
    }

    /* renamed from: k */
    public final void m33522k(RecordingConfig config) {
        m33526o(config);
        this.audioRecord.createAudioRecord(config.getFormatConfig());
        m33521j(config);
        this.state.start(this);
    }

    /* renamed from: l */
    public final void m33523l() throws IOException {
        Debug.INSTANCE.m32052i(AudioRecordManager.class, "finish recording, duration: " + getRecordDuration(), new Object[0]);
        m33525n();
        releaseWakeLock$sdk_media_release();
        m33527p();
        postRecordChangeEvent$sdk_media_release();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r2.getAcceptAudioData() == true) goto L8;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.media.bean.AudioDataBean m33524m(byte[] r3) {
        /*
            r2 = this;
            com.onyx.android.sdk.media.codec.encoder.IAudioEncoder r0 = r2.audioEncoder
            r0.encode(r3)
            com.onyx.android.sdk.media.config.RecordingConfig r2 = r2.recordingConfig
            r0 = 0
            if (r2 == 0) goto L12
            boolean r2 = r2.getAcceptAudioData()
            r1 = 1
            if (r2 != r1) goto L12
            goto L13
        L12:
            r1 = r0
        L13:
            if (r1 == 0) goto L16
            goto L18
        L16:
            byte[] r3 = new byte[r0]
        L18:
            com.onyx.android.sdk.media.bean.AudioDataBean r2 = new com.onyx.android.sdk.media.bean.AudioDataBean
            long r0 = java.lang.System.currentTimeMillis()
            r2.<init>(r3, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.media.recorder.AudioRecordManager.m33524m(byte[]):com.onyx.android.sdk.media.bean.AudioDataBean");
    }

    /* renamed from: n */
    public final void m33525n() {
        this.audioRecord.releaseRecord();
        this.audioEncoder.flush();
        this.audioEncoder.stop();
    }

    /* renamed from: o */
    public final void m33526o(RecordingConfig config) {
        this.recordingConfig = config;
        Subject<RecorderState> subject = this.stateSubject;
        if (subject != null) {
            subject.onComplete();
        }
        this.stateSubject = BehaviorSubject.create();
    }

    /* renamed from: p */
    public final void m33527p() {
        RecordingConfig recordingConfig = this.recordingConfig;
        if (recordingConfig != null) {
            recordingConfig.setAcceptAudioData(false);
        }
        Subject<RecorderState> subject = this.stateSubject;
        if (subject != null) {
            subject.onComplete();
        }
        this.stateSubject = null;
        switchToStopState$sdk_media_release();
    }

    public final void pauseRecording() {
        this.state.pause(this);
    }

    public final void postRecordChangeEvent$sdk_media_release() {
        if (isClosed()) {
            return;
        }
        RecordingConfig recordingConfig = this.recordingConfig;
        if ((recordingConfig == null || recordingConfig.getPostDurationEvent()) ? false : true) {
            return;
        }
        int m33518g = (int) ((m33518g() / 32768.0f) * 100);
        Debug.INSTANCE.m32035d(AudioRecordManager.class, "maxAmplitude:" + m33518g + ", recordDuration:" + getRecordDuration(), new Object[0]);
        EventBusHolder eventBusHolder = this.eventBusHolder;
        RecordingConfig recordingConfig2 = this.recordingConfig;
        String recordId = recordingConfig2 != null ? recordingConfig2.getRecordId() : null;
        if (recordId == null) {
            recordId = "";
        }
        eventBusHolder.post(new RecordChangeEvent(recordId, m33518g, (int) getRecordDuration()));
    }

    /* renamed from: r */
    public final void m33528r(RecorderState state) {
        this.state = state;
        Subject<RecorderState> subject = this.stateSubject;
        if (subject != null) {
            subject.onNext(state);
        }
        Debug.INSTANCE.m32052i(AudioRecordManager.class, "recording state changed: " + state.getStatus(), new Object[0]);
        this.eventBusHolder.post(new PlayStatusChangeEvent(state.getStatus()));
    }

    public final void releaseWakeLock$sdk_media_release() {
        this.wakeLockHolder.releaseWakeLock();
    }

    public final void resumeRecording() {
        this.state.resume(this);
    }

    @NotNull
    public final AudioRecordManager setAcceptAudioData(boolean acceptAudioData) {
        RecordingConfig recordingConfig = this.recordingConfig;
        if (recordingConfig != null) {
            recordingConfig.setAcceptAudioData(acceptAudioData);
        }
        return this;
    }

    public final void setAudioEncoder$sdk_media_release(@NotNull IAudioEncoder iAudioEncoder) {
        Intrinsics.checkNotNullParameter(iAudioEncoder, "<set-?>");
        this.audioEncoder = iAudioEncoder;
    }

    public final void setAudioRecord$sdk_media_release(@NotNull AudioRecorder audioRecorder) {
        Intrinsics.checkNotNullParameter(audioRecorder, "<set-?>");
        this.audioRecord = audioRecorder;
    }

    public final void setEventBusHolder(@NotNull EventBusHolder eventBusHolder) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "<set-?>");
        this.eventBusHolder = eventBusHolder;
    }

    public final void setPostDurationEvent(boolean postDurationEvent) {
        RecordingConfig recordingConfig = this.recordingConfig;
        if (recordingConfig == null) {
            return;
        }
        recordingConfig.setPostDurationEvent(postDurationEvent);
    }

    @NotNull
    public final Observable<AudioDataBean> startRecording(@NotNull RecordingConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        Debug.INSTANCE.m32035d(AudioRecordManager.class, "startRecording:" + config.getFilePath(), new Object[0]);
        Observable<AudioDataBean> doFinally = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C7480e(config)).flatMap(new C7481f()).observeOn(getObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.di
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AudioRecordManager.m33514q(AudioRecordManager.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void startTimer$sdk_media_release() {
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.recordChangeObserver);
        rxTimerUtil.timer(0L, 100L, m33519h());
    }

    public final boolean stopRecording() {
        this.state.stop(this);
        return true;
    }

    public final void switchToPauseState$sdk_media_release() {
        m33528r(new RecorderPausedState());
    }

    public final void switchToRecordingState$sdk_media_release() {
        m33528r(new RecorderRecordingState());
    }

    public final void switchToStopState$sdk_media_release() {
        m33528r(new RecorderStoppedState());
        Subject<RecorderState> subject = this.stateSubject;
        if (subject != null) {
            subject.onComplete();
        }
    }
}
