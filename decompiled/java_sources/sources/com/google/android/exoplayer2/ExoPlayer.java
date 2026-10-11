package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AuxEffectInfo;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import java.util.List;

/* loaded from: classes5.dex */
public interface ExoPlayer extends Player {
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @Deprecated
    /* loaded from: classes5.dex */
    public interface AudioComponent {
        @Deprecated
        void clearAuxEffectInfo();

        @Deprecated
        AudioAttributes getAudioAttributes();

        @Deprecated
        int getAudioSessionId();

        @Deprecated
        boolean getSkipSilenceEnabled();

        @Deprecated
        float getVolume();

        @Deprecated
        void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

        @Deprecated
        void setAudioSessionId(int i);

        @Deprecated
        void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

        @Deprecated
        void setSkipSilenceEnabled(boolean z);

        @Deprecated
        void setVolume(float f);
    }

    /* loaded from: classes5.dex */
    public interface AudioOffloadListener {
        default void onExperimentalOffloadSchedulingEnabledChanged(boolean z) {
        }

        default void onExperimentalSleepingForOffloadChanged(boolean z) {
        }
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: A */
        public boolean f22290A;

        /* renamed from: a */
        public final Context f22291a;

        /* renamed from: b */
        public Clock f22292b;

        /* renamed from: c */
        public long f22293c;

        /* renamed from: d */
        public Supplier<RenderersFactory> f22294d;

        /* renamed from: e */
        public Supplier<MediaSource.Factory> f22295e;

        /* renamed from: f */
        public Supplier<TrackSelector> f22296f;

        /* renamed from: g */
        public Supplier<LoadControl> f22297g;

        /* renamed from: h */
        public Supplier<BandwidthMeter> f22298h;

        /* renamed from: i */
        public Function<Clock, AnalyticsCollector> f22299i;

        /* renamed from: j */
        public Looper f22300j;

        /* renamed from: k */
        @Nullable
        public PriorityTaskManager f22301k;

        /* renamed from: l */
        public AudioAttributes f22302l;

        /* renamed from: m */
        public boolean f22303m;

        /* renamed from: n */
        public int f22304n;

        /* renamed from: o */
        public boolean f22305o;

        /* renamed from: p */
        public boolean f22306p;

        /* renamed from: q */
        public int f22307q;

        /* renamed from: r */
        public int f22308r;

        /* renamed from: s */
        public boolean f22309s;

        /* renamed from: t */
        public SeekParameters f22310t;

        /* renamed from: u */
        public long f22311u;

        /* renamed from: v */
        public long f22312v;

        /* renamed from: w */
        public LivePlaybackSpeedControl f22313w;

        /* renamed from: x */
        public long f22314x;

        /* renamed from: y */
        public long f22315y;

        /* renamed from: z */
        public boolean f22316z;

        public Builder(final Context context) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: com.sunia.HTREnginev2.xzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17693x;
                    m17693x = ExoPlayer.Builder.m17693x(context);
                    return m17693x;
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: com.sunia.HTREnginev2.bzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17694y;
                    m17694y = ExoPlayer.Builder.m17694y(context);
                    return m17694y;
                }
            });
        }

        /* renamed from: A */
        public static /* synthetic */ LoadControl m17652A(LoadControl loadControl) {
            return loadControl;
        }

        /* renamed from: B */
        public static /* synthetic */ BandwidthMeter m17653B(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* renamed from: C */
        public static /* synthetic */ AnalyticsCollector m17654C(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* renamed from: D */
        public static /* synthetic */ TrackSelector m17655D(Context context) {
            return new DefaultTrackSelector(context);
        }

        /* renamed from: F */
        public static /* synthetic */ RenderersFactory m17657F(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* renamed from: G */
        public static /* synthetic */ MediaSource.Factory m17658G(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        /* renamed from: H */
        public static /* synthetic */ RenderersFactory m17659H(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* renamed from: I */
        public static /* synthetic */ MediaSource.Factory m17660I(MediaSource.Factory factory) {
            return factory;
        }

        /* renamed from: J */
        public static /* synthetic */ RenderersFactory m17661J(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* renamed from: K */
        public static /* synthetic */ MediaSource.Factory m17662K(MediaSource.Factory factory) {
            return factory;
        }

        /* renamed from: L */
        public static /* synthetic */ RenderersFactory m17663L(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* renamed from: M */
        public static /* synthetic */ MediaSource.Factory m17664M(MediaSource.Factory factory) {
            return factory;
        }

        /* renamed from: N */
        public static /* synthetic */ AnalyticsCollector m17665N(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* renamed from: O */
        public static /* synthetic */ BandwidthMeter m17666O(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* renamed from: P */
        public static /* synthetic */ LoadControl m17667P(LoadControl loadControl) {
            return loadControl;
        }

        /* renamed from: Q */
        public static /* synthetic */ MediaSource.Factory m17668Q(MediaSource.Factory factory) {
            return factory;
        }

        /* renamed from: R */
        public static /* synthetic */ RenderersFactory m17669R(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* renamed from: S */
        public static /* synthetic */ TrackSelector m17670S(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* renamed from: x */
        public static /* synthetic */ RenderersFactory m17693x(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* renamed from: y */
        public static /* synthetic */ MediaSource.Factory m17694y(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        /* renamed from: z */
        public static /* synthetic */ TrackSelector m17695z(TrackSelector trackSelector) {
            return trackSelector;
        }

        public ExoPlayer build() {
            Assertions.checkState(!this.f22290A);
            this.f22290A = true;
            return new C4671a(this, null);
        }

        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            Assertions.checkState(!this.f22290A);
            this.f22293c = j;
            return this;
        }

        public Builder setAnalyticsCollector(final AnalyticsCollector analyticsCollector) {
            Assertions.checkState(!this.f22290A);
            this.f22299i = new Function() { // from class: com.sunia.HTREnginev2.lzf
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    AnalyticsCollector m17665N;
                    m17665N = ExoPlayer.Builder.m17665N(AnalyticsCollector.this, (Clock) obj);
                    return m17665N;
                }
            };
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            Assertions.checkState(!this.f22290A);
            this.f22302l = audioAttributes;
            this.f22303m = z;
            return this;
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Assertions.checkState(!this.f22290A);
            this.f22298h = new Supplier() { // from class: com.sunia.HTREnginev2.qzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    BandwidthMeter m17666O;
                    m17666O = ExoPlayer.Builder.m17666O(BandwidthMeter.this);
                    return m17666O;
                }
            };
            return this;
        }

        @VisibleForTesting
        public Builder setClock(Clock clock) {
            Assertions.checkState(!this.f22290A);
            this.f22292b = clock;
            return this;
        }

        public Builder setDetachSurfaceTimeoutMs(long j) {
            Assertions.checkState(!this.f22290A);
            this.f22315y = j;
            return this;
        }

        public Builder setHandleAudioBecomingNoisy(boolean z) {
            Assertions.checkState(!this.f22290A);
            this.f22305o = z;
            return this;
        }

        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            Assertions.checkState(!this.f22290A);
            this.f22313w = livePlaybackSpeedControl;
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Assertions.checkState(!this.f22290A);
            this.f22297g = new Supplier() { // from class: com.sunia.HTREnginev2.szf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    LoadControl m17667P;
                    m17667P = ExoPlayer.Builder.m17667P(LoadControl.this);
                    return m17667P;
                }
            };
            return this;
        }

        public Builder setLooper(Looper looper) {
            Assertions.checkState(!this.f22290A);
            this.f22300j = looper;
            return this;
        }

        public Builder setMediaSourceFactory(final MediaSource.Factory factory) {
            Assertions.checkState(!this.f22290A);
            this.f22295e = new Supplier() { // from class: com.sunia.HTREnginev2.rzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17668Q;
                    m17668Q = ExoPlayer.Builder.m17668Q(MediaSource.Factory.this);
                    return m17668Q;
                }
            };
            return this;
        }

        public Builder setPauseAtEndOfMediaItems(boolean z) {
            Assertions.checkState(!this.f22290A);
            this.f22316z = z;
            return this;
        }

        public Builder setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
            Assertions.checkState(!this.f22290A);
            this.f22301k = priorityTaskManager;
            return this;
        }

        public Builder setReleaseTimeoutMs(long j) {
            Assertions.checkState(!this.f22290A);
            this.f22314x = j;
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Assertions.checkState(!this.f22290A);
            this.f22294d = new Supplier() { // from class: com.sunia.HTREnginev2.czf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17669R;
                    m17669R = ExoPlayer.Builder.m17669R(RenderersFactory.this);
                    return m17669R;
                }
            };
            return this;
        }

        public Builder setSeekBackIncrementMs(@IntRange(from = 1) long j) {
            Assertions.checkArgument(j > 0);
            Assertions.checkState(!this.f22290A);
            this.f22311u = j;
            return this;
        }

        public Builder setSeekForwardIncrementMs(@IntRange(from = 1) long j) {
            Assertions.checkArgument(j > 0);
            Assertions.checkState(!this.f22290A);
            this.f22312v = j;
            return this;
        }

        public Builder setSeekParameters(SeekParameters seekParameters) {
            Assertions.checkState(!this.f22290A);
            this.f22310t = seekParameters;
            return this;
        }

        public Builder setSkipSilenceEnabled(boolean z) {
            Assertions.checkState(!this.f22290A);
            this.f22306p = z;
            return this;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Assertions.checkState(!this.f22290A);
            this.f22296f = new Supplier() { // from class: com.sunia.HTREnginev2.azf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    TrackSelector m17670S;
                    m17670S = ExoPlayer.Builder.m17670S(TrackSelector.this);
                    return m17670S;
                }
            };
            return this;
        }

        public Builder setUseLazyPreparation(boolean z) {
            Assertions.checkState(!this.f22290A);
            this.f22309s = z;
            return this;
        }

        public Builder setVideoChangeFrameRateStrategy(int i) {
            Assertions.checkState(!this.f22290A);
            this.f22308r = i;
            return this;
        }

        public Builder setVideoScalingMode(int i) {
            Assertions.checkState(!this.f22290A);
            this.f22307q = i;
            return this;
        }

        public Builder setWakeMode(int i) {
            Assertions.checkState(!this.f22290A);
            this.f22304n = i;
            return this;
        }

        /* renamed from: w */
        public SimpleExoPlayer m17696w() {
            Assertions.checkState(!this.f22290A);
            this.f22290A = true;
            return new SimpleExoPlayer(this);
        }

        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: com.sunia.HTREnginev2.hzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17657F;
                    m17657F = ExoPlayer.Builder.m17657F(RenderersFactory.this);
                    return m17657F;
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: com.sunia.HTREnginev2.izf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17658G;
                    m17658G = ExoPlayer.Builder.m17658G(context);
                    return m17658G;
                }
            });
        }

        public Builder(final Context context, final MediaSource.Factory factory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: com.sunia.HTREnginev2.dzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17659H;
                    m17659H = ExoPlayer.Builder.m17659H(context);
                    return m17659H;
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: com.sunia.HTREnginev2.ezf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17660I;
                    m17660I = ExoPlayer.Builder.m17660I(MediaSource.Factory.this);
                    return m17660I;
                }
            });
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: com.sunia.HTREnginev2.fzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17661J;
                    m17661J = ExoPlayer.Builder.m17661J(RenderersFactory.this);
                    return m17661J;
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: com.sunia.HTREnginev2.gzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17662K;
                    m17662K = ExoPlayer.Builder.m17662K(MediaSource.Factory.this);
                    return m17662K;
                }
            });
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory, final TrackSelector trackSelector, final LoadControl loadControl, final BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: com.sunia.HTREnginev2.jzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    RenderersFactory m17663L;
                    m17663L = ExoPlayer.Builder.m17663L(RenderersFactory.this);
                    return m17663L;
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: com.sunia.HTREnginev2.kzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    MediaSource.Factory m17664M;
                    m17664M = ExoPlayer.Builder.m17664M(MediaSource.Factory.this);
                    return m17664M;
                }
            }, (Supplier<TrackSelector>) new Supplier() { // from class: com.sunia.HTREnginev2.mzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    TrackSelector m17695z;
                    m17695z = ExoPlayer.Builder.m17695z(TrackSelector.this);
                    return m17695z;
                }
            }, (Supplier<LoadControl>) new Supplier() { // from class: com.sunia.HTREnginev2.nzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    LoadControl m17652A;
                    m17652A = ExoPlayer.Builder.m17652A(LoadControl.this);
                    return m17652A;
                }
            }, (Supplier<BandwidthMeter>) new Supplier() { // from class: com.sunia.HTREnginev2.ozf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    BandwidthMeter m17653B;
                    m17653B = ExoPlayer.Builder.m17653B(BandwidthMeter.this);
                    return m17653B;
                }
            }, (Function<Clock, AnalyticsCollector>) new Function() { // from class: com.sunia.HTREnginev2.pzf
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    AnalyticsCollector m17654C;
                    m17654C = ExoPlayer.Builder.m17654C(AnalyticsCollector.this, (Clock) obj);
                    return m17654C;
                }
            });
        }

        public Builder(final Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2) {
            this(context, supplier, supplier2, (Supplier<TrackSelector>) new Supplier() { // from class: com.sunia.HTREnginev2.tzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    TrackSelector m17655D;
                    m17655D = ExoPlayer.Builder.m17655D(context);
                    return m17655D;
                }
            }, (Supplier<LoadControl>) new Supplier() { // from class: com.sunia.HTREnginev2.uzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, (Supplier<BandwidthMeter>) new Supplier() { // from class: com.sunia.HTREnginev2.vzf
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    BandwidthMeter singletonInstance;
                    singletonInstance = DefaultBandwidthMeter.getSingletonInstance(context);
                    return singletonInstance;
                }
            }, (Function<Clock, AnalyticsCollector>) new Function() { // from class: com.sunia.HTREnginev2.wzf
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        public Builder(Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2, Supplier<TrackSelector> supplier3, Supplier<LoadControl> supplier4, Supplier<BandwidthMeter> supplier5, Function<Clock, AnalyticsCollector> function) {
            this.f22291a = context;
            this.f22294d = supplier;
            this.f22295e = supplier2;
            this.f22296f = supplier3;
            this.f22297g = supplier4;
            this.f22298h = supplier5;
            this.f22299i = function;
            this.f22300j = Util.getCurrentOrMainLooper();
            this.f22302l = AudioAttributes.DEFAULT;
            this.f22304n = 0;
            this.f22307q = 1;
            this.f22308r = 0;
            this.f22309s = true;
            this.f22310t = SeekParameters.DEFAULT;
            this.f22311u = 5000L;
            this.f22312v = 15000L;
            this.f22313w = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.f22292b = Clock.DEFAULT;
            this.f22314x = 500L;
            this.f22315y = 2000L;
        }
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public interface DeviceComponent {
        @Deprecated
        void decreaseDeviceVolume();

        @Deprecated
        DeviceInfo getDeviceInfo();

        @Deprecated
        int getDeviceVolume();

        @Deprecated
        void increaseDeviceVolume();

        @Deprecated
        boolean isDeviceMuted();

        @Deprecated
        void setDeviceMuted(boolean z);

        @Deprecated
        void setDeviceVolume(int i);
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public interface TextComponent {
        @Deprecated
        List<Cue> getCurrentCues();
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public interface VideoComponent {
        @Deprecated
        void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void clearVideoSurface();

        @Deprecated
        void clearVideoSurface(@Nullable Surface surface);

        @Deprecated
        void clearVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder);

        @Deprecated
        void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

        @Deprecated
        void clearVideoTextureView(@Nullable TextureView textureView);

        @Deprecated
        int getVideoChangeFrameRateStrategy();

        @Deprecated
        int getVideoScalingMode();

        @Deprecated
        VideoSize getVideoSize();

        @Deprecated
        void setCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void setVideoChangeFrameRateStrategy(int i);

        @Deprecated
        void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void setVideoScalingMode(int i);

        @Deprecated
        void setVideoSurface(@Nullable Surface surface);

        @Deprecated
        void setVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder);

        @Deprecated
        void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

        @Deprecated
        void setVideoTextureView(@Nullable TextureView textureView);
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void addMediaSource(int i, MediaSource mediaSource);

    void addMediaSource(MediaSource mediaSource);

    void addMediaSources(int i, List<MediaSource> list);

    void addMediaSources(List<MediaSource> list);

    void clearAuxEffectInfo();

    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    PlayerMessage createMessage(PlayerMessage.Target target);

    boolean experimentalIsSleepingForOffload();

    void experimentalSetOffloadSchedulingEnabled(boolean z);

    AnalyticsCollector getAnalyticsCollector();

    @Nullable
    @Deprecated
    AudioComponent getAudioComponent();

    @Nullable
    DecoderCounters getAudioDecoderCounters();

    @Nullable
    Format getAudioFormat();

    int getAudioSessionId();

    Clock getClock();

    @Nullable
    @Deprecated
    DeviceComponent getDeviceComponent();

    boolean getPauseAtEndOfMediaItems();

    Looper getPlaybackLooper();

    @Override // com.google.android.exoplayer2.Player
    @Nullable
    ExoPlaybackException getPlayerError();

    Renderer getRenderer(int i);

    int getRendererCount();

    int getRendererType(int i);

    SeekParameters getSeekParameters();

    boolean getSkipSilenceEnabled();

    @Nullable
    @Deprecated
    TextComponent getTextComponent();

    @Nullable
    TrackSelector getTrackSelector();

    int getVideoChangeFrameRateStrategy();

    @Nullable
    @Deprecated
    VideoComponent getVideoComponent();

    @Nullable
    DecoderCounters getVideoDecoderCounters();

    @Nullable
    Format getVideoFormat();

    int getVideoScalingMode();

    @Deprecated
    void prepare(MediaSource mediaSource);

    @Deprecated
    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @Deprecated
    void retry();

    void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    @Deprecated
    void setHandleWakeLock(boolean z);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, long j);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setMediaSources(List<MediaSource> list);

    void setMediaSources(List<MediaSource> list, int i, long j);

    void setMediaSources(List<MediaSource> list, boolean z);

    void setPauseAtEndOfMediaItems(boolean z);

    void setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager);

    void setSeekParameters(@Nullable SeekParameters seekParameters);

    void setShuffleOrder(ShuffleOrder shuffleOrder);

    void setSkipSilenceEnabled(boolean z);

    void setVideoChangeFrameRateStrategy(int i);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setVideoScalingMode(int i);

    void setWakeMode(int i);
}
