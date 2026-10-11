package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.AudioBecomingNoisyManager;
import com.google.android.exoplayer2.AudioFocusManager;
import com.google.android.exoplayer2.C4671a;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.StreamVolumeManager;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.AuxEffectInfo;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.g7o;
import com.sunia.HTREnginev2.l5o;
import com.sunia.HTREnginev2.o4l;
import com.sunia.HTREnginev2.slj;
import com.sunia.HTREnginev2.v4l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.google.android.exoplayer2.a */
/* loaded from: classes5.dex */
public final class C4671a extends BasePlayer implements ExoPlayer, ExoPlayer.AudioComponent, ExoPlayer.VideoComponent, ExoPlayer.TextComponent, ExoPlayer.DeviceComponent {

    /* renamed from: z0 */
    public static final String f22757z0 = "ExoPlayerImpl";

    /* renamed from: A */
    public final StreamVolumeManager f22758A;

    /* renamed from: B */
    public final l5o f22759B;

    /* renamed from: C */
    public final g7o f22760C;

    /* renamed from: D */
    public final long f22761D;

    /* renamed from: E */
    public int f22762E;

    /* renamed from: F */
    public boolean f22763F;

    /* renamed from: G */
    public int f22764G;

    /* renamed from: H */
    public int f22765H;

    /* renamed from: I */
    public boolean f22766I;

    /* renamed from: J */
    public int f22767J;

    /* renamed from: K */
    public boolean f22768K;

    /* renamed from: L */
    public SeekParameters f22769L;

    /* renamed from: M */
    public ShuffleOrder f22770M;

    /* renamed from: N */
    public boolean f22771N;

    /* renamed from: O */
    public Player.Commands f22772O;

    /* renamed from: P */
    public MediaMetadata f22773P;

    /* renamed from: Q */
    public MediaMetadata f22774Q;

    /* renamed from: R */
    @Nullable
    public Format f22775R;

    /* renamed from: S */
    @Nullable
    public Format f22776S;

    /* renamed from: T */
    @Nullable
    public AudioTrack f22777T;

    /* renamed from: U */
    @Nullable
    public Object f22778U;

    /* renamed from: V */
    @Nullable
    public Surface f22779V;

    /* renamed from: W */
    @Nullable
    public SurfaceHolder f22780W;

    /* renamed from: X */
    @Nullable
    public SphericalGLSurfaceView f22781X;

    /* renamed from: Y */
    public boolean f22782Y;

    /* renamed from: Z */
    @Nullable
    public TextureView f22783Z;

    /* renamed from: a */
    public final TrackSelectorResult f22784a;

    /* renamed from: a0 */
    public int f22785a0;

    /* renamed from: b */
    public final Player.Commands f22786b;

    /* renamed from: b0 */
    public int f22787b0;

    /* renamed from: c */
    public final ConditionVariable f22788c;

    /* renamed from: c0 */
    public int f22789c0;

    /* renamed from: d */
    public final Context f22790d;

    /* renamed from: d0 */
    public int f22791d0;

    /* renamed from: e */
    public final Player f22792e;

    /* renamed from: e0 */
    @Nullable
    public DecoderCounters f22793e0;

    /* renamed from: f */
    public final Renderer[] f22794f;

    /* renamed from: f0 */
    @Nullable
    public DecoderCounters f22795f0;

    /* renamed from: g */
    public final TrackSelector f22796g;

    /* renamed from: g0 */
    public int f22797g0;

    /* renamed from: h */
    public final HandlerWrapper f22798h;

    /* renamed from: h0 */
    public AudioAttributes f22799h0;

    /* renamed from: i */
    public final ExoPlayerImplInternal.PlaybackInfoUpdateListener f22800i;

    /* renamed from: i0 */
    public float f22801i0;

    /* renamed from: j */
    public final ExoPlayerImplInternal f22802j;

    /* renamed from: j0 */
    public boolean f22803j0;

    /* renamed from: k */
    public final ListenerSet<Player.Listener> f22804k;

    /* renamed from: k0 */
    public List<Cue> f22805k0;

    /* renamed from: l */
    public final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> f22806l;

    /* renamed from: l0 */
    @Nullable
    public VideoFrameMetadataListener f22807l0;

    /* renamed from: m */
    public final Timeline.Period f22808m;

    /* renamed from: m0 */
    @Nullable
    public CameraMotionListener f22809m0;

    /* renamed from: n */
    public final List<e> f22810n;

    /* renamed from: n0 */
    public boolean f22811n0;

    /* renamed from: o */
    public final boolean f22812o;

    /* renamed from: o0 */
    public boolean f22813o0;

    /* renamed from: p */
    public final MediaSource.Factory f22814p;

    /* renamed from: p0 */
    @Nullable
    public PriorityTaskManager f22815p0;

    /* renamed from: q */
    public final AnalyticsCollector f22816q;

    /* renamed from: q0 */
    public boolean f22817q0;

    /* renamed from: r */
    public final Looper f22818r;

    /* renamed from: r0 */
    public boolean f22819r0;

    /* renamed from: s */
    public final BandwidthMeter f22820s;

    /* renamed from: s0 */
    public DeviceInfo f22821s0;

    /* renamed from: t */
    public final long f22822t;

    /* renamed from: t0 */
    public VideoSize f22823t0;

    /* renamed from: u */
    public final long f22824u;

    /* renamed from: u0 */
    public MediaMetadata f22825u0;

    /* renamed from: v */
    public final Clock f22826v;

    /* renamed from: v0 */
    public o4l f22827v0;

    /* renamed from: w */
    public final c f22828w;

    /* renamed from: w0 */
    public int f22829w0;

    /* renamed from: x */
    public final d f22830x;

    /* renamed from: x0 */
    public int f22831x0;

    /* renamed from: y */
    public final AudioBecomingNoisyManager f22832y;

    /* renamed from: y0 */
    public long f22833y0;

    /* renamed from: z */
    public final AudioFocusManager f22834z;

    @RequiresApi(31)
    /* renamed from: com.google.android.exoplayer2.a$b */
    /* loaded from: classes5.dex */
    public static final class b {
        @DoNotInline
        /* renamed from: a */
        public static PlayerId m18171a() {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            return new PlayerId(logSessionId);
        }
    }

    /* renamed from: com.google.android.exoplayer2.a$c */
    /* loaded from: classes5.dex */
    public final class c implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioFocusManager.PlayerControl, AudioBecomingNoisyManager.EventListener, StreamVolumeManager.Listener, ExoPlayer.AudioOffloadListener {
        public c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ void m18180i(Player.Listener listener) {
            listener.onMediaMetadataChanged(C4671a.this.f22773P);
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void executePlayerCommand(int i) {
            boolean playWhenReady = C4671a.this.getPlayWhenReady();
            C4671a.this.m18162r1(playWhenReady, i, C4671a.m18124r0(playWhenReady, i));
        }

        @Override // com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener
        public void onAudioBecomingNoisy() {
            C4671a.this.m18162r1(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioCodecError(Exception exc) {
            C4671a.this.f22816q.onAudioCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String str, long j, long j2) {
            C4671a.this.f22816q.onAudioDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderReleased(String str) {
            C4671a.this.f22816q.onAudioDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDisabled(DecoderCounters decoderCounters) {
            C4671a.this.f22816q.onAudioDisabled(decoderCounters);
            C4671a.this.f22776S = null;
            C4671a.this.f22795f0 = null;
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioEnabled(DecoderCounters decoderCounters) {
            C4671a.this.f22795f0 = decoderCounters;
            C4671a.this.f22816q.onAudioEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
            C4671a.this.f22776S = format;
            C4671a.this.f22816q.onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioPositionAdvancing(long j) {
            C4671a.this.f22816q.onAudioPositionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioSinkError(Exception exc) {
            C4671a.this.f22816q.onAudioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioUnderrun(int i, long j, long j2) {
            C4671a.this.f22816q.onAudioUnderrun(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.text.TextOutput
        public void onCues(final List<Cue> list) {
            C4671a.this.f22805k0 = list;
            C4671a.this.f22804k.sendEvent(27, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.f1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues(list);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
            C4671a.this.f22816q.onDroppedFrames(i, j);
        }

        @Override // com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener
        public void onExperimentalSleepingForOffloadChanged(boolean z) {
            C4671a.this.m18167u1();
        }

        @Override // com.google.android.exoplayer2.metadata.MetadataOutput
        public void onMetadata(final Metadata metadata) {
            C4671a c4671a = C4671a.this;
            c4671a.f22825u0 = c4671a.f22825u0.buildUpon().populateFromMetadata(metadata).build();
            MediaMetadata m18145i0 = C4671a.this.m18145i0();
            if (!m18145i0.equals(C4671a.this.f22773P)) {
                C4671a.this.f22773P = m18145i0;
                C4671a.this.f22804k.queueEvent(14, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.d1g
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        C4671a.c.this.m18180i((Player.Listener) obj);
                    }
                });
            }
            C4671a.this.f22804k.queueEvent(28, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.e1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(Metadata.this);
                }
            });
            C4671a.this.f22804k.flushEvents();
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Object obj, long j) {
            C4671a.this.f22816q.onRenderedFirstFrame(obj, j);
            if (C4671a.this.f22778U == obj) {
                C4671a.this.f22804k.sendEvent(26, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.j1g
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj2) {
                        ((Player.Listener) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(final boolean z) {
            if (C4671a.this.f22803j0 == z) {
                return;
            }
            C4671a.this.f22803j0 = z;
            C4671a.this.f22804k.sendEvent(23, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.h1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSkipSilenceEnabledChanged(z);
                }
            });
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamTypeChanged(int i) {
            final DeviceInfo m18115j0 = C4671a.m18115j0(C4671a.this.f22758A);
            if (m18115j0.equals(C4671a.this.f22821s0)) {
                return;
            }
            C4671a.this.f22821s0 = m18115j0;
            C4671a.this.f22804k.sendEvent(29, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.g1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceInfoChanged(DeviceInfo.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamVolumeChanged(final int i, final boolean z) {
            C4671a.this.f22804k.sendEvent(30, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.i1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(i, z);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C4671a.this.m18153m1(surfaceTexture);
            C4671a.this.m18139d1(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C4671a.this.m18157o1(null);
            C4671a.this.m18139d1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C4671a.this.m18139d1(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoCodecError(Exception exc) {
            C4671a.this.f22816q.onVideoCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j, long j2) {
            C4671a.this.f22816q.onVideoDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderReleased(String str) {
            C4671a.this.f22816q.onVideoDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters decoderCounters) {
            C4671a.this.f22816q.onVideoDisabled(decoderCounters);
            C4671a.this.f22775R = null;
            C4671a.this.f22793e0 = null;
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters decoderCounters) {
            C4671a.this.f22793e0 = decoderCounters;
            C4671a.this.f22816q.onVideoEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoFrameProcessingOffset(long j, int i) {
            C4671a.this.f22816q.onVideoFrameProcessingOffset(j, i);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
            C4671a.this.f22775R = format;
            C4671a.this.f22816q.onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoSizeChanged(final VideoSize videoSize) {
            C4671a.this.f22823t0 = videoSize;
            C4671a.this.f22804k.sendEvent(25, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.k1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(VideoSize.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceCreated(Surface surface) {
            C4671a.this.m18157o1(surface);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceDestroyed(Surface surface) {
            C4671a.this.m18157o1(null);
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void setVolumeMultiplier(float f) {
            C4671a.this.m18147j1();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C4671a.this.m18139d1(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (C4671a.this.f22782Y) {
                C4671a.this.m18157o1(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (C4671a.this.f22782Y) {
                C4671a.this.m18157o1(null);
            }
            C4671a.this.m18139d1(0, 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.a$d */
    /* loaded from: classes5.dex */
    public static final class d implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {

        /* renamed from: i */
        public static final int f22836i = 7;

        /* renamed from: j */
        public static final int f22837j = 8;

        /* renamed from: k */
        public static final int f22838k = 10000;

        /* renamed from: e */
        @Nullable
        public VideoFrameMetadataListener f22839e;

        /* renamed from: f */
        @Nullable
        public CameraMotionListener f22840f;

        /* renamed from: g */
        @Nullable
        public VideoFrameMetadataListener f22841g;

        /* renamed from: h */
        @Nullable
        public CameraMotionListener f22842h;

        public d() {
        }

        @Override // com.google.android.exoplayer2.PlayerMessage.Target
        public void handleMessage(int i, @Nullable Object obj) {
            if (i == 7) {
                this.f22839e = (VideoFrameMetadataListener) obj;
                return;
            }
            if (i == 8) {
                this.f22840f = (CameraMotionListener) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.f22841g = null;
                this.f22842h = null;
            } else {
                this.f22841g = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f22842h = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotion(long j, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.f22842h;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotion(j, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.f22840f;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotion(j, fArr);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotionReset() {
            CameraMotionListener cameraMotionListener = this.f22842h;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotionReset();
            }
            CameraMotionListener cameraMotionListener2 = this.f22840f;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotionReset();
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameMetadataListener
        public void onVideoFrameAboutToBeRendered(long j, long j2, Format format, @Nullable MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.f22841g;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.f22839e;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.a$e */
    /* loaded from: classes5.dex */
    public static final class e implements slj {

        /* renamed from: a */
        public final Object f22843a;

        /* renamed from: b */
        public Timeline f22844b;

        public e(Object obj, Timeline timeline) {
            this.f22843a = obj;
            this.f22844b = timeline;
        }

        @Override // com.sunia.HTREnginev2.slj
        /* renamed from: a */
        public Timeline mo17972a() {
            return this.f22844b;
        }

        @Override // com.sunia.HTREnginev2.slj
        public Object getUid() {
            return this.f22843a;
        }
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public C4671a(ExoPlayer.Builder builder, @Nullable Player player) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.f22788c = conditionVariable;
        try {
            String hexString = Integer.toHexString(System.identityHashCode(this));
            String str = Util.DEVICE_DEBUG_INFO;
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
            sb.append("Init ");
            sb.append(hexString);
            sb.append(" [");
            sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
            sb.append("] [");
            sb.append(str);
            sb.append(IteratorUtils.f104924b);
            Log.m21491i(f22757z0, sb.toString());
            Context applicationContext = builder.f22291a.getApplicationContext();
            this.f22790d = applicationContext;
            AnalyticsCollector apply = builder.f22299i.apply(builder.f22292b);
            this.f22816q = apply;
            this.f22815p0 = builder.f22301k;
            this.f22799h0 = builder.f22302l;
            this.f22785a0 = builder.f22307q;
            this.f22787b0 = builder.f22308r;
            this.f22803j0 = builder.f22306p;
            this.f22761D = builder.f22315y;
            c cVar = new c();
            this.f22828w = cVar;
            d dVar = new d();
            this.f22830x = dVar;
            Handler handler = new Handler(builder.f22300j);
            Renderer[] createRenderers = builder.f22294d.get().createRenderers(handler, cVar, cVar, cVar, cVar);
            this.f22794f = createRenderers;
            Assertions.checkState(createRenderers.length > 0);
            TrackSelector trackSelector = builder.f22296f.get();
            this.f22796g = trackSelector;
            this.f22814p = builder.f22295e.get();
            BandwidthMeter bandwidthMeter = builder.f22298h.get();
            this.f22820s = bandwidthMeter;
            this.f22812o = builder.f22309s;
            this.f22769L = builder.f22310t;
            this.f22822t = builder.f22311u;
            this.f22824u = builder.f22312v;
            this.f22771N = builder.f22316z;
            Looper looper = builder.f22300j;
            this.f22818r = looper;
            Clock clock = builder.f22292b;
            this.f22826v = clock;
            Player player2 = player == null ? this : player;
            this.f22792e = player2;
            this.f22804k = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: com.sunia.HTREnginev2.j0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
                public final void invoke(Object obj, FlagSet flagSet) {
                    C4671a.this.m18136z0((Player.Listener) obj, flagSet);
                }
            });
            this.f22806l = new CopyOnWriteArraySet<>();
            this.f22810n = new ArrayList();
            this.f22770M = new ShuffleOrder.DefaultShuffleOrder(0);
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[createRenderers.length], new ExoTrackSelection[createRenderers.length], TracksInfo.EMPTY, null);
            this.f22784a = trackSelectorResult;
            this.f22808m = new Timeline.Period();
            Player.Commands build = new Player.Commands.Builder().addAll(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).addIf(29, trackSelector.isSetParametersSupported()).build();
            this.f22786b = build;
            this.f22772O = new Player.Commands.Builder().addAll(build).add(4).add(10).build();
            this.f22798h = clock.createHandler(looper, null);
            ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: com.sunia.HTREnginev2.u0g
                @Override // com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener
                public final void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                    C4671a.this.m18050B0(playbackInfoUpdate);
                }
            };
            this.f22800i = playbackInfoUpdateListener;
            this.f22827v0 = o4l.m55888k(trackSelectorResult);
            apply.setPlayer(player2, looper);
            int i = Util.SDK_INT;
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(createRenderers, trackSelector, trackSelectorResult, builder.f22297g.get(), bandwidthMeter, this.f22762E, this.f22763F, apply, this.f22769L, builder.f22313w, builder.f22314x, this.f22771N, looper, clock, playbackInfoUpdateListener, i < 31 ? new PlayerId() : b.m18171a());
            this.f22802j = exoPlayerImplInternal;
            this.f22801i0 = 1.0f;
            this.f22762E = 0;
            MediaMetadata mediaMetadata = MediaMetadata.EMPTY;
            this.f22773P = mediaMetadata;
            this.f22774Q = mediaMetadata;
            this.f22825u0 = mediaMetadata;
            this.f22829w0 = -1;
            if (i < 21) {
                this.f22797g0 = m18170w0(0);
            } else {
                this.f22797g0 = Util.generateAudioSessionIdV21(applicationContext);
            }
            this.f22805k0 = ImmutableList.m26161of();
            this.f22811n0 = true;
            addListener(apply);
            bandwidthMeter.addEventListener(new Handler(looper), apply);
            addAudioOffloadListener(cVar);
            long j = builder.f22293c;
            if (j > 0) {
                exoPlayerImplInternal.m17797o(j);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.f22291a, handler, cVar);
            this.f22832y = audioBecomingNoisyManager;
            audioBecomingNoisyManager.m17608b(builder.f22305o);
            AudioFocusManager audioFocusManager = new AudioFocusManager(builder.f22291a, handler, cVar);
            this.f22834z = audioFocusManager;
            audioFocusManager.m17622n(builder.f22303m ? this.f22799h0 : null);
            StreamVolumeManager streamVolumeManager = new StreamVolumeManager(builder.f22291a, handler, cVar);
            this.f22758A = streamVolumeManager;
            streamVolumeManager.m18018m(Util.getStreamTypeForAudioUsage(this.f22799h0.usage));
            l5o l5oVar = new l5o(builder.f22291a);
            this.f22759B = l5oVar;
            l5oVar.m55388a(builder.f22304n != 0);
            g7o g7oVar = new g7o(builder.f22291a);
            this.f22760C = g7oVar;
            g7oVar.m54236a(builder.f22304n == 2);
            this.f22821s0 = m18115j0(streamVolumeManager);
            this.f22823t0 = VideoSize.UNKNOWN;
            m18146i1(1, 10, Integer.valueOf(this.f22797g0));
            m18146i1(2, 10, Integer.valueOf(this.f22797g0));
            m18146i1(1, 3, this.f22799h0);
            m18146i1(2, 4, Integer.valueOf(this.f22785a0));
            m18146i1(2, 5, Integer.valueOf(this.f22787b0));
            m18146i1(1, 9, Boolean.valueOf(this.f22803j0));
            m18146i1(2, 7, dVar);
            m18146i1(6, 8, dVar);
            conditionVariable.open();
        } catch (Throwable th) {
            this.f22788c.open();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B0 */
    public /* synthetic */ void m18050B0(final ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.f22798h.post(new Runnable() { // from class: com.sunia.HTREnginev2.x0g
            @Override // java.lang.Runnable
            public final void run() {
                C4671a.this.m18048A0(playbackInfoUpdate);
            }
        });
    }

    /* renamed from: C0 */
    public static /* synthetic */ void m18052C0(Player.Listener listener) {
        listener.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public /* synthetic */ void m18058F0(Player.Listener listener) {
        listener.onPlaylistMetadataChanged(this.f22774Q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ void m18070L0(Player.Listener listener) {
        listener.onAvailableCommandsChanged(this.f22772O);
    }

    /* renamed from: M0 */
    public static /* synthetic */ void m18072M0(o4l o4lVar, int i, Player.Listener listener) {
        listener.onTimelineChanged(o4lVar.f79306a, i);
    }

    /* renamed from: N0 */
    public static /* synthetic */ void m18074N0(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    /* renamed from: P0 */
    public static /* synthetic */ void m18078P0(o4l o4lVar, Player.Listener listener) {
        listener.onPlayerErrorChanged(o4lVar.f79311f);
    }

    /* renamed from: Q0 */
    public static /* synthetic */ void m18080Q0(o4l o4lVar, Player.Listener listener) {
        listener.onPlayerError(o4lVar.f79311f);
    }

    /* renamed from: R0 */
    public static /* synthetic */ void m18082R0(o4l o4lVar, TrackSelectionArray trackSelectionArray, Player.Listener listener) {
        listener.onTracksChanged(o4lVar.f79313h, trackSelectionArray);
    }

    /* renamed from: S0 */
    public static /* synthetic */ void m18084S0(o4l o4lVar, Player.Listener listener) {
        listener.onTracksInfoChanged(o4lVar.f79314i.tracksInfo);
    }

    /* renamed from: U0 */
    public static /* synthetic */ void m18088U0(o4l o4lVar, Player.Listener listener) {
        listener.onLoadingChanged(o4lVar.f79312g);
        listener.onIsLoadingChanged(o4lVar.f79312g);
    }

    /* renamed from: V0 */
    public static /* synthetic */ void m18090V0(o4l o4lVar, Player.Listener listener) {
        listener.onPlayerStateChanged(o4lVar.f79317l, o4lVar.f79310e);
    }

    /* renamed from: W0 */
    public static /* synthetic */ void m18092W0(o4l o4lVar, Player.Listener listener) {
        listener.onPlaybackStateChanged(o4lVar.f79310e);
    }

    /* renamed from: X0 */
    public static /* synthetic */ void m18094X0(o4l o4lVar, int i, Player.Listener listener) {
        listener.onPlayWhenReadyChanged(o4lVar.f79317l, i);
    }

    /* renamed from: Y0 */
    public static /* synthetic */ void m18096Y0(o4l o4lVar, Player.Listener listener) {
        listener.onPlaybackSuppressionReasonChanged(o4lVar.f79318m);
    }

    /* renamed from: Z0 */
    public static /* synthetic */ void m18098Z0(o4l o4lVar, Player.Listener listener) {
        listener.onIsPlayingChanged(m18132x0(o4lVar));
    }

    /* renamed from: a1 */
    public static /* synthetic */ void m18100a1(o4l o4lVar, Player.Listener listener) {
        listener.onPlaybackParametersChanged(o4lVar.f79319n);
    }

    /* renamed from: j0 */
    public static DeviceInfo m18115j0(StreamVolumeManager streamVolumeManager) {
        return new DeviceInfo(0, streamVolumeManager.m18012e(), streamVolumeManager.m18011d());
    }

    /* renamed from: r0 */
    public static int m18124r0(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    /* renamed from: u0 */
    public static long m18128u0(o4l o4lVar) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        o4lVar.f79306a.getPeriodByUid(o4lVar.f79307b.periodUid, period);
        return o4lVar.f79308c == C4649C.TIME_UNSET ? o4lVar.f79306a.getWindow(period.windowIndex, window).getDefaultPositionUs() : period.getPositionInWindowUs() + o4lVar.f79308c;
    }

    /* renamed from: x0 */
    public static boolean m18132x0(o4l o4lVar) {
        return o4lVar.f79310e == 3 && o4lVar.f79317l && o4lVar.f79318m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z0 */
    public /* synthetic */ void m18136z0(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this.f22792e, new Player.Events(flagSet));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        Assertions.checkNotNull(analyticsListener);
        this.f22816q.addListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.f22806l.add(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.Listener listener) {
        Assertions.checkNotNull(listener);
        this.f22804k.add(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        m18169v1();
        addMediaSources(Math.min(i, this.f22810n.size()), m18150l0(list));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(MediaSource mediaSource) {
        m18169v1();
        addMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(List<MediaSource> list) {
        m18169v1();
        addMediaSources(this.f22810n.size(), list);
    }

    /* renamed from: b1 */
    public final o4l m18137b1(o4l o4lVar, Timeline timeline, @Nullable Pair<Object, Long> pair) {
        Assertions.checkArgument(timeline.isEmpty() || pair != null);
        Timeline timeline2 = o4lVar.f79306a;
        o4l m55899j = o4lVar.m55899j(timeline);
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId m55889l = o4l.m55889l();
            long msToUs = Util.msToUs(this.f22833y0);
            o4l m55891b = m55899j.m55892c(m55889l, msToUs, msToUs, msToUs, 0L, TrackGroupArray.EMPTY, this.f22784a, ImmutableList.m26161of()).m55891b(m55889l);
            m55891b.f79322q = m55891b.f79324s;
            return m55891b;
        }
        Object obj = m55899j.f79307b.periodUid;
        boolean z = !obj.equals(((Pair) Util.castNonNull(pair)).first);
        MediaSource.MediaPeriodId mediaPeriodId = z ? new MediaSource.MediaPeriodId(pair.first) : m55899j.f79307b;
        long longValue = ((Long) pair.second).longValue();
        long msToUs2 = Util.msToUs(getContentPosition());
        if (!timeline2.isEmpty()) {
            msToUs2 -= timeline2.getPeriodByUid(obj, this.f22808m).getPositionInWindowUs();
        }
        if (z || longValue < msToUs2) {
            Assertions.checkState(!mediaPeriodId.isAd());
            o4l m55891b2 = m55899j.m55892c(mediaPeriodId, longValue, longValue, longValue, 0L, z ? TrackGroupArray.EMPTY : m55899j.f79313h, z ? this.f22784a : m55899j.f79314i, z ? ImmutableList.m26161of() : m55899j.f79315j).m55891b(mediaPeriodId);
            m55891b2.f79322q = longValue;
            return m55891b2;
        }
        if (longValue != msToUs2) {
            Assertions.checkState(!mediaPeriodId.isAd());
            long max = Math.max(0L, m55899j.f79323r - (longValue - msToUs2));
            long j = m55899j.f79322q;
            if (m55899j.f79316k.equals(m55899j.f79307b)) {
                j = longValue + max;
            }
            o4l m55892c = m55899j.m55892c(mediaPeriodId, longValue, longValue, longValue, max, m55899j.f79313h, m55899j.f79314i, m55899j.f79315j);
            m55892c.f79322q = j;
            return m55892c;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(m55899j.f79316k.periodUid);
        if (indexOfPeriod != -1 && timeline.getPeriod(indexOfPeriod, this.f22808m).windowIndex == timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22808m).windowIndex) {
            return m55899j;
        }
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22808m);
        long adDurationUs = mediaPeriodId.isAd() ? this.f22808m.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) : this.f22808m.durationUs;
        o4l m55891b3 = m55899j.m55892c(mediaPeriodId, m55899j.f79324s, m55899j.f79324s, m55899j.f79309d, adDurationUs - m55899j.f79324s, m55899j.f79313h, m55899j.f79314i, m55899j.f79315j).m55891b(mediaPeriodId);
        m55891b3.f79322q = adDurationUs;
        return m55891b3;
    }

    @Nullable
    /* renamed from: c1 */
    public final Pair<Object, Long> m18138c1(Timeline timeline, int i, long j) {
        if (timeline.isEmpty()) {
            this.f22829w0 = i;
            if (j == C4649C.TIME_UNSET) {
                j = 0;
            }
            this.f22833y0 = j;
            this.f22831x0 = 0;
            return null;
        }
        if (i == -1 || i >= timeline.getWindowCount()) {
            i = timeline.getFirstWindowIndex(this.f22763F);
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return timeline.getPeriodPositionUs(this.window, this.f22808m, i, Util.msToUs(j));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void clearAuxEffectInfo() {
        m18169v1();
        setAuxEffectInfo(new AuxEffectInfo(0, 0.0f));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearCameraMotionListener(CameraMotionListener cameraMotionListener) {
        m18169v1();
        if (this.f22809m0 != cameraMotionListener) {
            return;
        }
        m18152m0(this.f22830x).setType(8).setPayload(null).send();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        m18169v1();
        if (this.f22807l0 != videoFrameMetadataListener) {
            return;
        }
        m18152m0(this.f22830x).setType(7).setPayload(null).send();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface() {
        m18169v1();
        m18144h1();
        m18157o1(null);
        m18139d1(0, 0);
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder) {
        m18169v1();
        if (surfaceHolder == null || surfaceHolder != this.f22780W) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        m18169v1();
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        m18169v1();
        if (textureView == null || textureView != this.f22783Z) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        m18169v1();
        return m18152m0(target);
    }

    /* renamed from: d1 */
    public final void m18139d1(final int i, final int i2) {
        if (i == this.f22789c0 && i2 == this.f22791d0) {
            return;
        }
        this.f22789c0 = i;
        this.f22791d0 = i2;
        this.f22804k.sendEvent(24, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.yzf
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSurfaceSizeChanged(i, i2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void decreaseDeviceVolume() {
        m18169v1();
        this.f22758A.m18010c();
    }

    /* renamed from: e1 */
    public final long m18140e1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22808m);
        return j + this.f22808m.getPositionInWindowUs();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean experimentalIsSleepingForOffload() {
        m18169v1();
        return this.f22827v0.f79321p;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        m18169v1();
        this.f22802j.m17800p(z);
    }

    /* renamed from: f1 */
    public final o4l m18141f1(int i, int i2) {
        boolean z = false;
        Assertions.checkArgument(i >= 0 && i2 >= i && i2 <= this.f22810n.size());
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        Timeline currentTimeline = getCurrentTimeline();
        int size = this.f22810n.size();
        this.f22764G++;
        m18142g1(i, i2);
        Timeline m18148k0 = m18148k0();
        o4l m18137b1 = m18137b1(this.f22827v0, m18148k0, m18160q0(currentTimeline, m18148k0));
        int i3 = m18137b1.f79310e;
        if (i3 != 1 && i3 != 4 && i < i2 && i2 == size && currentMediaItemIndex >= m18137b1.f79306a.getWindowCount()) {
            z = true;
        }
        if (z) {
            m18137b1 = m18137b1.m55897h(4);
        }
        this.f22802j.m17786k0(i, i2, this.f22770M);
        return m18137b1;
    }

    /* renamed from: g1 */
    public final void m18142g1(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.f22810n.remove(i3);
        }
        this.f22770M = this.f22770M.cloneAndRemove(i, i2);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public AnalyticsCollector getAnalyticsCollector() {
        m18169v1();
        return this.f22816q;
    }

    @Override // com.google.android.exoplayer2.Player
    public Looper getApplicationLooper() {
        return this.f22818r;
    }

    @Override // com.google.android.exoplayer2.Player
    public AudioAttributes getAudioAttributes() {
        m18169v1();
        return this.f22799h0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.AudioComponent getAudioComponent() {
        m18169v1();
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Nullable
    public DecoderCounters getAudioDecoderCounters() {
        m18169v1();
        return this.f22795f0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Nullable
    public Format getAudioFormat() {
        m18169v1();
        return this.f22776S;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public int getAudioSessionId() {
        m18169v1();
        return this.f22797g0;
    }

    @Override // com.google.android.exoplayer2.Player
    public Player.Commands getAvailableCommands() {
        m18169v1();
        return this.f22772O;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        m18169v1();
        if (!isPlayingAd()) {
            return getContentBufferedPosition();
        }
        o4l o4lVar = this.f22827v0;
        return o4lVar.f79316k.equals(o4lVar.f79307b) ? Util.usToMs(this.f22827v0.f79322q) : getDuration();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Clock getClock() {
        return this.f22826v;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentBufferedPosition() {
        m18169v1();
        if (this.f22827v0.f79306a.isEmpty()) {
            return this.f22833y0;
        }
        o4l o4lVar = this.f22827v0;
        if (o4lVar.f79316k.windowSequenceNumber != o4lVar.f79307b.windowSequenceNumber) {
            return o4lVar.f79306a.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
        }
        long j = o4lVar.f79322q;
        if (this.f22827v0.f79316k.isAd()) {
            o4l o4lVar2 = this.f22827v0;
            Timeline.Period periodByUid = o4lVar2.f79306a.getPeriodByUid(o4lVar2.f79316k.periodUid, this.f22808m);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.f22827v0.f79316k.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        o4l o4lVar3 = this.f22827v0;
        return Util.usToMs(m18140e1(o4lVar3.f79306a, o4lVar3.f79316k, j));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        m18169v1();
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        o4l o4lVar = this.f22827v0;
        o4lVar.f79306a.getPeriodByUid(o4lVar.f79307b.periodUid, this.f22808m);
        o4l o4lVar2 = this.f22827v0;
        return o4lVar2.f79308c == C4649C.TIME_UNSET ? o4lVar2.f79306a.getWindow(getCurrentMediaItemIndex(), this.window).getDefaultPositionMs() : this.f22808m.getPositionInWindowMs() + Util.usToMs(this.f22827v0.f79308c);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        m18169v1();
        if (isPlayingAd()) {
            return this.f22827v0.f79307b.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        m18169v1();
        if (isPlayingAd()) {
            return this.f22827v0.f79307b.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public List<Cue> getCurrentCues() {
        m18169v1();
        return this.f22805k0;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentMediaItemIndex() {
        m18169v1();
        int m18158p0 = m18158p0();
        if (m18158p0 == -1) {
            return 0;
        }
        return m18158p0;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        m18169v1();
        if (this.f22827v0.f79306a.isEmpty()) {
            return this.f22831x0;
        }
        o4l o4lVar = this.f22827v0;
        return o4lVar.f79306a.getIndexOfPeriod(o4lVar.f79307b.periodUid);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        m18169v1();
        return Util.usToMs(m18156o0(this.f22827v0));
    }

    @Override // com.google.android.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        m18169v1();
        return this.f22827v0.f79306a;
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackGroupArray getCurrentTrackGroups() {
        m18169v1();
        return this.f22827v0.f79313h;
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        m18169v1();
        return new TrackSelectionArray(this.f22827v0.f79314i.selections);
    }

    @Override // com.google.android.exoplayer2.Player
    public TracksInfo getCurrentTracksInfo() {
        m18169v1();
        return this.f22827v0.f79314i.tracksInfo;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.DeviceComponent getDeviceComponent() {
        m18169v1();
        return this;
    }

    @Override // com.google.android.exoplayer2.Player
    public DeviceInfo getDeviceInfo() {
        m18169v1();
        return this.f22821s0;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getDeviceVolume() {
        m18169v1();
        return this.f22758A.m18013g();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        m18169v1();
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        o4l o4lVar = this.f22827v0;
        MediaSource.MediaPeriodId mediaPeriodId = o4lVar.f79307b;
        o4lVar.f79306a.getPeriodByUid(mediaPeriodId.periodUid, this.f22808m);
        return Util.usToMs(this.f22808m.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getMaxSeekToPreviousPosition() {
        m18169v1();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getMediaMetadata() {
        m18169v1();
        return this.f22773P;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        m18169v1();
        return this.f22771N;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        m18169v1();
        return this.f22827v0.f79317l;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.f22802j.m17810w();
    }

    @Override // com.google.android.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        m18169v1();
        return this.f22827v0.f79319n;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        m18169v1();
        return this.f22827v0.f79310e;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        m18169v1();
        return this.f22827v0.f79318m;
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getPlaylistMetadata() {
        m18169v1();
        return this.f22774Q;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Renderer getRenderer(int i) {
        m18169v1();
        return this.f22794f[i];
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererCount() {
        m18169v1();
        return this.f22794f.length;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererType(int i) {
        m18169v1();
        return this.f22794f[i].getTrackType();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        m18169v1();
        return this.f22762E;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        m18169v1();
        return this.f22822t;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        m18169v1();
        return this.f22824u;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public SeekParameters getSeekParameters() {
        m18169v1();
        return this.f22769L;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        m18169v1();
        return this.f22763F;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public boolean getSkipSilenceEnabled() {
        m18169v1();
        return this.f22803j0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.TextComponent getTextComponent() {
        m18169v1();
        return this;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        m18169v1();
        return Util.usToMs(this.f22827v0.f79323r);
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        m18169v1();
        return this.f22796g.getParameters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public TrackSelector getTrackSelector() {
        m18169v1();
        return this.f22796g;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoChangeFrameRateStrategy() {
        m18169v1();
        return this.f22787b0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public ExoPlayer.VideoComponent getVideoComponent() {
        m18169v1();
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Nullable
    public DecoderCounters getVideoDecoderCounters() {
        m18169v1();
        return this.f22793e0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Nullable
    public Format getVideoFormat() {
        m18169v1();
        return this.f22775R;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoScalingMode() {
        m18169v1();
        return this.f22785a0;
    }

    @Override // com.google.android.exoplayer2.Player
    public VideoSize getVideoSize() {
        m18169v1();
        return this.f22823t0;
    }

    @Override // com.google.android.exoplayer2.Player
    public float getVolume() {
        m18169v1();
        return this.f22801i0;
    }

    /* renamed from: h0 */
    public final List<MediaSourceList.C4663c> m18143h0(int i, List<MediaSource> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaSourceList.C4663c c4663c = new MediaSourceList.C4663c(list.get(i2), this.f22812o);
            arrayList.add(c4663c);
            this.f22810n.add(i2 + i, new e(c4663c.f22627b, c4663c.f22626a.getTimeline()));
        }
        this.f22770M = this.f22770M.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    /* renamed from: h1 */
    public final void m18144h1() {
        if (this.f22781X != null) {
            m18152m0(this.f22830x).setType(10000).setPayload(null).send();
            this.f22781X.removeVideoSurfaceListener(this.f22828w);
            this.f22781X = null;
        }
        TextureView textureView = this.f22783Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f22828w) {
                Log.m21493w(f22757z0, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f22783Z.setSurfaceTextureListener(null);
            }
            this.f22783Z = null;
        }
        SurfaceHolder surfaceHolder = this.f22780W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f22828w);
            this.f22780W = null;
        }
    }

    /* renamed from: i0 */
    public final MediaMetadata m18145i0() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return this.f22825u0;
        }
        return this.f22825u0.buildUpon().populate(currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).mediaItem.mediaMetadata).build();
    }

    /* renamed from: i1 */
    public final void m18146i1(int i, int i2, @Nullable Object obj) {
        for (Renderer renderer : this.f22794f) {
            if (renderer.getTrackType() == i) {
                m18152m0(renderer).setType(i2).setPayload(obj).send();
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void increaseDeviceVolume() {
        m18169v1();
        this.f22758A.m18014i();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isDeviceMuted() {
        m18169v1();
        return this.f22758A.m18015j();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        m18169v1();
        return this.f22827v0.f79312g;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        m18169v1();
        return this.f22827v0.f79307b.isAd();
    }

    /* renamed from: j1 */
    public final void m18147j1() {
        m18146i1(1, 2, Float.valueOf(this.f22801i0 * this.f22834z.m17616h()));
    }

    /* renamed from: k0 */
    public final Timeline m18148k0() {
        return new v4l(this.f22810n, this.f22770M);
    }

    /* renamed from: k1 */
    public final void m18149k1(List<MediaSource> list, int i, long j, boolean z) {
        int i2 = i;
        int m18158p0 = m18158p0();
        long currentPosition = getCurrentPosition();
        this.f22764G++;
        if (!this.f22810n.isEmpty()) {
            m18142g1(0, this.f22810n.size());
        }
        List<MediaSourceList.C4663c> m18143h0 = m18143h0(0, list);
        Timeline m18148k0 = m18148k0();
        if (!m18148k0.isEmpty() && i2 >= m18148k0.getWindowCount()) {
            throw new IllegalSeekPositionException(m18148k0, i2, j);
        }
        long j2 = j;
        if (z) {
            i2 = m18148k0.getFirstWindowIndex(this.f22763F);
            j2 = -9223372036854775807L;
        } else if (i2 == -1) {
            i2 = m18158p0;
            j2 = currentPosition;
        }
        o4l m18137b1 = m18137b1(this.f22827v0, m18148k0, m18138c1(m18148k0, i2, j2));
        int i3 = m18137b1.f79310e;
        if (i2 != -1 && i3 != 1) {
            i3 = (m18148k0.isEmpty() || i2 >= m18148k0.getWindowCount()) ? 4 : 2;
        }
        o4l m55897h = m18137b1.m55897h(i3);
        this.f22802j.m17732K0(m18143h0, i2, Util.msToUs(j2), this.f22770M);
        m18164s1(m55897h, 0, 1, false, (this.f22827v0.f79307b.periodUid.equals(m55897h.f79307b.periodUid) || this.f22827v0.f79306a.isEmpty()) ? false : true, 4, m18156o0(m55897h), -1);
    }

    /* renamed from: l0 */
    public final List<MediaSource> m18150l0(List<MediaItem> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.f22814p.createMediaSource(list.get(i)));
        }
        return arrayList;
    }

    /* renamed from: l1 */
    public final void m18151l1(SurfaceHolder surfaceHolder) {
        this.f22782Y = false;
        this.f22780W = surfaceHolder;
        surfaceHolder.addCallback(this.f22828w);
        Surface surface = this.f22780W.getSurface();
        if (surface == null || !surface.isValid()) {
            m18139d1(0, 0);
        } else {
            Rect surfaceFrame = this.f22780W.getSurfaceFrame();
            m18139d1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    /* renamed from: m0 */
    public final PlayerMessage m18152m0(PlayerMessage.Target target) {
        int m18158p0 = m18158p0();
        ExoPlayerImplInternal exoPlayerImplInternal = this.f22802j;
        Timeline timeline = this.f22827v0.f79306a;
        if (m18158p0 == -1) {
            m18158p0 = 0;
        }
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, m18158p0, this.f22826v, exoPlayerImplInternal.m17810w());
    }

    /* renamed from: m1 */
    public final void m18153m1(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        m18157o1(surface);
        this.f22779V = surface;
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        m18169v1();
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= this.f22810n.size() && i3 >= 0);
        Timeline currentTimeline = getCurrentTimeline();
        this.f22764G++;
        int min = Math.min(i3, this.f22810n.size() - (i2 - i));
        Util.moveItems(this.f22810n, i, i2, min);
        Timeline m18148k0 = m18148k0();
        o4l m18137b1 = m18137b1(this.f22827v0, m18148k0, m18160q0(currentTimeline, m18148k0));
        this.f22802j.m17759a0(i, i2, min, this.f22770M);
        m18164s1(m18137b1, 0, 1, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    /* renamed from: n0 */
    public final Pair<Boolean, Integer> m18154n0(o4l o4lVar, o4l o4lVar2, boolean z, int i, boolean z2) {
        Timeline timeline = o4lVar2.f79306a;
        Timeline timeline2 = o4lVar.f79306a;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (timeline.getWindow(timeline.getPeriodByUid(o4lVar2.f79307b.periodUid, this.f22808m).windowIndex, this.window).uid.equals(timeline2.getWindow(timeline2.getPeriodByUid(o4lVar.f79307b.periodUid, this.f22808m).windowIndex, this.window).uid)) {
            return (z && i == 0 && o4lVar2.f79307b.windowSequenceNumber < o4lVar.f79307b.windowSequenceNumber) ? new Pair<>(Boolean.TRUE, 0) : new Pair<>(Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair<>(Boolean.TRUE, Integer.valueOf(i2));
    }

    /* renamed from: n1 */
    public void m18155n1(boolean z) {
        this.f22811n0 = z;
    }

    /* renamed from: o0 */
    public final long m18156o0(o4l o4lVar) {
        return o4lVar.f79306a.isEmpty() ? Util.msToUs(this.f22833y0) : o4lVar.f79307b.isAd() ? o4lVar.f79324s : m18140e1(o4lVar.f79306a, o4lVar.f79307b, o4lVar.f79324s);
    }

    /* renamed from: o1 */
    public final void m18157o1(@Nullable Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Renderer[] rendererArr = this.f22794f;
        int length = rendererArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            Renderer renderer = rendererArr[i];
            if (renderer.getTrackType() == 2) {
                arrayList.add(m18152m0(renderer).setType(1).setPayload(obj).send());
            }
            i++;
        }
        Object obj2 = this.f22778U;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((PlayerMessage) it2.next()).blockUntilDelivered(this.f22761D);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.f22778U;
            Surface surface = this.f22779V;
            if (obj3 == surface) {
                surface.release();
                this.f22779V = null;
            }
        }
        this.f22778U = obj;
        if (z) {
            m18159p1(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    /* renamed from: p0 */
    public final int m18158p0() {
        if (this.f22827v0.f79306a.isEmpty()) {
            return this.f22829w0;
        }
        o4l o4lVar = this.f22827v0;
        return o4lVar.f79306a.getPeriodByUid(o4lVar.f79307b.periodUid, this.f22808m).windowIndex;
    }

    /* renamed from: p1 */
    public final void m18159p1(boolean z, @Nullable ExoPlaybackException exoPlaybackException) {
        o4l m55891b;
        if (z) {
            m55891b = m18141f1(0, this.f22810n.size()).m55895f(null);
        } else {
            o4l o4lVar = this.f22827v0;
            m55891b = o4lVar.m55891b(o4lVar.f79307b);
            m55891b.f79322q = m55891b.f79324s;
            m55891b.f79323r = 0L;
        }
        o4l m55897h = m55891b.m55897h(1);
        if (exoPlaybackException != null) {
            m55897h = m55897h.m55895f(exoPlaybackException);
        }
        o4l o4lVar2 = m55897h;
        this.f22764G++;
        this.f22802j.m17778h1();
        m18164s1(o4lVar2, 0, 1, false, o4lVar2.f79306a.isEmpty() && !this.f22827v0.f79306a.isEmpty(), 4, m18156o0(o4lVar2), -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        m18169v1();
        boolean playWhenReady = getPlayWhenReady();
        int m17625q = this.f22834z.m17625q(playWhenReady, 2);
        m18162r1(playWhenReady, m17625q, m18124r0(playWhenReady, m17625q));
        o4l o4lVar = this.f22827v0;
        if (o4lVar.f79310e != 1) {
            return;
        }
        o4l m55895f = o4lVar.m55895f(null);
        o4l m55897h = m55895f.m55897h(m55895f.f79306a.isEmpty() ? 4 : 2);
        this.f22764G++;
        this.f22802j.m17771f0();
        m18164s1(m55897h, 1, 1, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    @Nullable
    /* renamed from: q0 */
    public final Pair<Object, Long> m18160q0(Timeline timeline, Timeline timeline2) {
        long contentPosition = getContentPosition();
        if (timeline.isEmpty() || timeline2.isEmpty()) {
            boolean z = !timeline.isEmpty() && timeline2.isEmpty();
            int m18158p0 = z ? -1 : m18158p0();
            if (z) {
                contentPosition = -9223372036854775807L;
            }
            return m18138c1(timeline2, m18158p0, contentPosition);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.f22808m, getCurrentMediaItemIndex(), Util.msToUs(contentPosition));
        Object obj = ((Pair) Util.castNonNull(periodPositionUs)).first;
        if (timeline2.getIndexOfPeriod(obj) != -1) {
            return periodPositionUs;
        }
        Object m17711v0 = ExoPlayerImplInternal.m17711v0(this.window, this.f22808m, this.f22762E, this.f22763F, obj, timeline, timeline2);
        if (m17711v0 == null) {
            return m18138c1(timeline2, -1, C4649C.TIME_UNSET);
        }
        timeline2.getPeriodByUid(m17711v0, this.f22808m);
        int i = this.f22808m.windowIndex;
        return m18138c1(timeline2, i, timeline2.getWindow(i, this.window).getDefaultPositionMs());
    }

    /* renamed from: q1 */
    public final void m18161q1() {
        Player.Commands commands = this.f22772O;
        Player.Commands availableCommands = Util.getAvailableCommands(this.f22792e, this.f22786b);
        this.f22772O = availableCommands;
        if (availableCommands.equals(commands)) {
            return;
        }
        this.f22804k.queueEvent(13, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.t0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                C4671a.this.m18070L0((Player.Listener) obj);
            }
        });
    }

    /* renamed from: r1 */
    public final void m18162r1(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        o4l o4lVar = this.f22827v0;
        if (o4lVar.f79317l == z2 && o4lVar.f79318m == i3) {
            return;
        }
        this.f22764G++;
        o4l m55894e = o4lVar.m55894e(z2, i3);
        this.f22802j.m17737O0(z2, i3);
        m18164s1(m55894e, 0, i2, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        AudioTrack audioTrack;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = Util.DEVICE_DEBUG_INFO;
        String registeredModules = ExoPlayerLibraryInfo.registeredModules();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(registeredModules).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(str);
        sb.append("] [");
        sb.append(registeredModules);
        sb.append(IteratorUtils.f104924b);
        Log.m21491i(f22757z0, sb.toString());
        m18169v1();
        if (Util.SDK_INT < 21 && (audioTrack = this.f22777T) != null) {
            audioTrack.release();
            this.f22777T = null;
        }
        this.f22832y.m17608b(false);
        this.f22758A.m18016k();
        this.f22759B.m55389b(false);
        this.f22760C.m54237b(false);
        this.f22834z.m17618j();
        if (!this.f22802j.m17777h0()) {
            this.f22804k.sendEvent(10, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.p0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18052C0((Player.Listener) obj);
                }
            });
        }
        this.f22804k.release();
        this.f22798h.removeCallbacksAndMessages(null);
        this.f22820s.removeEventListener(this.f22816q);
        o4l m55897h = this.f22827v0.m55897h(1);
        this.f22827v0 = m55897h;
        o4l m55891b = m55897h.m55891b(m55897h.f79307b);
        this.f22827v0 = m55891b;
        m55891b.f79322q = m55891b.f79324s;
        this.f22827v0.f79323r = 0L;
        this.f22816q.release();
        m18144h1();
        Surface surface = this.f22779V;
        if (surface != null) {
            surface.release();
            this.f22779V = null;
        }
        if (this.f22817q0) {
            ((PriorityTaskManager) Assertions.checkNotNull(this.f22815p0)).remove(0);
            this.f22817q0 = false;
        }
        this.f22805k0 = ImmutableList.m26161of();
        this.f22819r0 = true;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        this.f22816q.removeListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.f22806l.remove(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.Listener listener) {
        Assertions.checkNotNull(listener);
        this.f22804k.remove(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        m18169v1();
        o4l m18141f1 = m18141f1(i, Math.min(i2, this.f22810n.size()));
        m18164s1(m18141f1, 0, 1, false, !m18141f1.f79307b.periodUid.equals(this.f22827v0.f79307b.periodUid), 4, m18156o0(m18141f1), -1);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void retry() {
        m18169v1();
        prepare();
    }

    /* renamed from: s0 */
    public final Player.PositionInfo m18163s0(long j) {
        MediaItem mediaItem;
        Object obj;
        int i;
        Object obj2;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        if (this.f22827v0.f79306a.isEmpty()) {
            mediaItem = null;
            obj = null;
            i = -1;
            obj2 = null;
        } else {
            o4l o4lVar = this.f22827v0;
            Object obj3 = o4lVar.f79307b.periodUid;
            o4lVar.f79306a.getPeriodByUid(obj3, this.f22808m);
            i = this.f22827v0.f79306a.getIndexOfPeriod(obj3);
            obj = obj3;
            obj2 = this.f22827v0.f79306a.getWindow(currentMediaItemIndex, this.window).uid;
            mediaItem = this.window.mediaItem;
        }
        long usToMs = Util.usToMs(j);
        long usToMs2 = this.f22827v0.f79307b.isAd() ? Util.usToMs(m18128u0(this.f22827v0)) : usToMs;
        MediaSource.MediaPeriodId mediaPeriodId = this.f22827v0.f79307b;
        return new Player.PositionInfo(obj2, currentMediaItemIndex, mediaItem, obj, i, usToMs, usToMs2, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
    }

    /* renamed from: s1 */
    public final void m18164s1(final o4l o4lVar, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4) {
        o4l o4lVar2 = this.f22827v0;
        this.f22827v0 = o4lVar;
        Pair<Boolean, Integer> m18154n0 = m18154n0(o4lVar, o4lVar2, z2, i3, !o4lVar2.f79306a.equals(o4lVar.f79306a));
        boolean booleanValue = ((Boolean) m18154n0.first).booleanValue();
        final int intValue = ((Integer) m18154n0.second).intValue();
        MediaMetadata mediaMetadata = this.f22773P;
        if (booleanValue) {
            r3 = o4lVar.f79306a.isEmpty() ? null : o4lVar.f79306a.getWindow(o4lVar.f79306a.getPeriodByUid(o4lVar.f79307b.periodUid, this.f22808m).windowIndex, this.window).mediaItem;
            this.f22825u0 = MediaMetadata.EMPTY;
        }
        if (booleanValue || !o4lVar2.f79315j.equals(o4lVar.f79315j)) {
            this.f22825u0 = this.f22825u0.buildUpon().populateFromMetadata(o4lVar.f79315j).build();
            mediaMetadata = m18145i0();
        }
        boolean z3 = !mediaMetadata.equals(this.f22773P);
        this.f22773P = mediaMetadata;
        boolean z4 = o4lVar2.f79317l != o4lVar.f79317l;
        boolean z5 = o4lVar2.f79310e != o4lVar.f79310e;
        if (z5 || z4) {
            m18167u1();
        }
        boolean z6 = o4lVar2.f79312g;
        boolean z7 = o4lVar.f79312g;
        boolean z8 = z6 != z7;
        if (z8) {
            m18166t1(z7);
        }
        if (!o4lVar2.f79306a.equals(o4lVar.f79306a)) {
            this.f22804k.queueEvent(0, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.b1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18072M0(o4l.this, i, (Player.Listener) obj);
                }
            });
        }
        if (z2) {
            final Player.PositionInfo m18165t0 = m18165t0(i3, o4lVar2, i4);
            final Player.PositionInfo m18163s0 = m18163s0(j);
            this.f22804k.queueEvent(11, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.f0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18074N0(i3, m18165t0, m18163s0, (Player.Listener) obj);
                }
            });
        }
        if (booleanValue) {
            this.f22804k.queueEvent(1, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.g0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(MediaItem.this, intValue);
                }
            });
        }
        if (o4lVar2.f79311f != o4lVar.f79311f) {
            this.f22804k.queueEvent(10, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.h0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18078P0(o4l.this, (Player.Listener) obj);
                }
            });
            if (o4lVar.f79311f != null) {
                this.f22804k.queueEvent(10, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.i0g
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        C4671a.m18080Q0(o4l.this, (Player.Listener) obj);
                    }
                });
            }
        }
        TrackSelectorResult trackSelectorResult = o4lVar2.f79314i;
        TrackSelectorResult trackSelectorResult2 = o4lVar.f79314i;
        if (trackSelectorResult != trackSelectorResult2) {
            this.f22796g.onSelectionActivated(trackSelectorResult2.info);
            final TrackSelectionArray trackSelectionArray = new TrackSelectionArray(o4lVar.f79314i.selections);
            this.f22804k.queueEvent(2, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.k0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18082R0(o4l.this, trackSelectionArray, (Player.Listener) obj);
                }
            });
            this.f22804k.queueEvent(2, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.l0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18084S0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (z3) {
            final MediaMetadata mediaMetadata2 = this.f22773P;
            this.f22804k.queueEvent(14, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.m0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(MediaMetadata.this);
                }
            });
        }
        if (z8) {
            this.f22804k.queueEvent(3, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.n0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18088U0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (z5 || z4) {
            this.f22804k.queueEvent(-1, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.o0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18090V0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (z5) {
            this.f22804k.queueEvent(4, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.zzf
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18092W0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (z4) {
            this.f22804k.queueEvent(5, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.a0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18094X0(o4l.this, i2, (Player.Listener) obj);
                }
            });
        }
        if (o4lVar2.f79318m != o4lVar.f79318m) {
            this.f22804k.queueEvent(6, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.b0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18096Y0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (m18132x0(o4lVar2) != m18132x0(o4lVar)) {
            this.f22804k.queueEvent(7, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.c0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18098Z0(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (!o4lVar2.f79319n.equals(o4lVar.f79319n)) {
            this.f22804k.queueEvent(12, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.d0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    C4671a.m18100a1(o4l.this, (Player.Listener) obj);
                }
            });
        }
        if (z) {
            this.f22804k.queueEvent(-1, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.e0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSeekProcessed();
                }
            });
        }
        m18161q1();
        this.f22804k.flushEvents();
        if (o4lVar2.f79320o != o4lVar.f79320o) {
            Iterator<ExoPlayer.AudioOffloadListener> it2 = this.f22806l.iterator();
            while (it2.hasNext()) {
                it2.next().onExperimentalOffloadSchedulingEnabledChanged(o4lVar.f79320o);
            }
        }
        if (o4lVar2.f79321p != o4lVar.f79321p) {
            Iterator<ExoPlayer.AudioOffloadListener> it3 = this.f22806l.iterator();
            while (it3.hasNext()) {
                it3.next().onExperimentalSleepingForOffloadChanged(o4lVar.f79321p);
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(int i, long j) {
        m18169v1();
        this.f22816q.notifySeekStarted();
        Timeline timeline = this.f22827v0.f79306a;
        if (i < 0 || (!timeline.isEmpty() && i >= timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(timeline, i, j);
        }
        this.f22764G++;
        if (isPlayingAd()) {
            Log.m21493w(f22757z0, "seekTo ignored because an ad is playing");
            ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.f22827v0);
            playbackInfoUpdate.incrementPendingOperationAcks(1);
            this.f22800i.onPlaybackInfoUpdate(playbackInfoUpdate);
            return;
        }
        int i2 = getPlaybackState() != 1 ? 2 : 1;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        o4l m18137b1 = m18137b1(this.f22827v0.m55897h(i2), timeline, m18138c1(timeline, i, j));
        this.f22802j.m17813x0(timeline, i, Util.msToUs(j));
        m18164s1(m18137b1, 0, 1, true, true, 1, m18156o0(m18137b1), currentMediaItemIndex);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioAttributes(final AudioAttributes audioAttributes, boolean z) {
        m18169v1();
        if (this.f22819r0) {
            return;
        }
        if (!Util.areEqual(this.f22799h0, audioAttributes)) {
            this.f22799h0 = audioAttributes;
            m18146i1(1, 3, audioAttributes);
            this.f22758A.m18018m(Util.getStreamTypeForAudioUsage(audioAttributes.usage));
            this.f22804k.queueEvent(20, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.w0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAudioAttributesChanged(AudioAttributes.this);
                }
            });
        }
        AudioFocusManager audioFocusManager = this.f22834z;
        if (!z) {
            audioAttributes = null;
        }
        audioFocusManager.m17622n(audioAttributes);
        boolean playWhenReady = getPlayWhenReady();
        int m17625q = this.f22834z.m17625q(playWhenReady, getPlaybackState());
        m18162r1(playWhenReady, m17625q, m18124r0(playWhenReady, m17625q));
        this.f22804k.flushEvents();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioSessionId(final int i) {
        m18169v1();
        if (this.f22797g0 == i) {
            return;
        }
        if (i == 0) {
            i = Util.SDK_INT < 21 ? m18170w0(0) : Util.generateAudioSessionIdV21(this.f22790d);
        } else if (Util.SDK_INT < 21) {
            m18170w0(i);
        }
        this.f22797g0 = i;
        m18146i1(1, 10, Integer.valueOf(i));
        m18146i1(2, 10, Integer.valueOf(i));
        this.f22804k.sendEvent(21, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.y0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onAudioSessionIdChanged(i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        m18169v1();
        m18146i1(1, 6, auxEffectInfo);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setCameraMotionListener(CameraMotionListener cameraMotionListener) {
        m18169v1();
        this.f22809m0 = cameraMotionListener;
        m18152m0(this.f22830x).setType(8).setPayload(cameraMotionListener).send();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceMuted(boolean z) {
        m18169v1();
        this.f22758A.m18017l(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceVolume(int i) {
        m18169v1();
        this.f22758A.m18019n(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setForegroundMode(boolean z) {
        m18169v1();
        if (this.f22768K != z) {
            this.f22768K = z;
            if (this.f22802j.m17727H0(z)) {
                return;
            }
            m18159p1(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(2), 1003));
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setHandleAudioBecomingNoisy(boolean z) {
        m18169v1();
        if (this.f22819r0) {
            return;
        }
        this.f22832y.m17608b(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setHandleWakeLock(boolean z) {
        m18169v1();
        setWakeMode(z ? 1 : 0);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        m18169v1();
        setMediaSources(m18150l0(list), z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        m18169v1();
        setMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list) {
        m18169v1();
        setMediaSources(list, true);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean z) {
        m18169v1();
        if (this.f22771N == z) {
            return;
        }
        this.f22771N = z;
        this.f22802j.m17735M0(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        m18169v1();
        int m17625q = this.f22834z.m17625q(z, getPlaybackState());
        m18162r1(z, m17625q, m18124r0(z, m17625q));
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        m18169v1();
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (this.f22827v0.f79319n.equals(playbackParameters)) {
            return;
        }
        o4l m55896g = this.f22827v0.m55896g(playbackParameters);
        this.f22764G++;
        this.f22802j.m17740Q0(playbackParameters);
        m18164s1(m55896g, 0, 1, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        m18169v1();
        Assertions.checkNotNull(mediaMetadata);
        if (mediaMetadata.equals(this.f22774Q)) {
            return;
        }
        this.f22774Q = mediaMetadata;
        this.f22804k.sendEvent(15, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.z0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                C4671a.this.m18058F0((Player.Listener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
        m18169v1();
        if (Util.areEqual(this.f22815p0, priorityTaskManager)) {
            return;
        }
        if (this.f22817q0) {
            ((PriorityTaskManager) Assertions.checkNotNull(this.f22815p0)).remove(0);
        }
        if (priorityTaskManager == null || !isLoading()) {
            this.f22817q0 = false;
        } else {
            priorityTaskManager.add(0);
            this.f22817q0 = true;
        }
        this.f22815p0 = priorityTaskManager;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(final int i) {
        m18169v1();
        if (this.f22762E != i) {
            this.f22762E = i;
            this.f22802j.m17744S0(i);
            this.f22804k.queueEvent(8, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.r0g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(i);
                }
            });
            m18161q1();
            this.f22804k.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        m18169v1();
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        if (this.f22769L.equals(seekParameters)) {
            return;
        }
        this.f22769L = seekParameters;
        this.f22802j.m17748U0(seekParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(final boolean z) {
        m18169v1();
        if (this.f22763F != z) {
            this.f22763F = z;
            this.f22802j.m17752W0(z);
            this.f22804k.queueEvent(9, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.a1g
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(z);
                }
            });
            m18161q1();
            this.f22804k.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        m18169v1();
        Timeline m18148k0 = m18148k0();
        o4l m18137b1 = m18137b1(this.f22827v0, m18148k0, m18138c1(m18148k0, getCurrentMediaItemIndex(), getCurrentPosition()));
        this.f22764G++;
        this.f22770M = shuffleOrder;
        this.f22802j.m17756Y0(shuffleOrder);
        m18164s1(m18137b1, 0, 1, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setSkipSilenceEnabled(final boolean z) {
        m18169v1();
        if (this.f22803j0 == z) {
            return;
        }
        this.f22803j0 = z;
        m18146i1(1, 9, Boolean.valueOf(z));
        this.f22804k.sendEvent(23, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.v0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void setTrackSelectionParameters(final TrackSelectionParameters trackSelectionParameters) {
        m18169v1();
        if (!this.f22796g.isSetParametersSupported() || trackSelectionParameters.equals(this.f22796g.getParameters())) {
            return;
        }
        this.f22796g.setParameters(trackSelectionParameters);
        this.f22804k.sendEvent(19, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.s0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onTrackSelectionParametersChanged(TrackSelectionParameters.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoChangeFrameRateStrategy(int i) {
        m18169v1();
        if (this.f22787b0 == i) {
            return;
        }
        this.f22787b0 = i;
        m18146i1(2, 5, Integer.valueOf(i));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        m18169v1();
        this.f22807l0 = videoFrameMetadataListener;
        m18152m0(this.f22830x).setType(7).setPayload(videoFrameMetadataListener).send();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoScalingMode(int i) {
        m18169v1();
        this.f22785a0 = i;
        m18146i1(2, 4, Integer.valueOf(i));
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurface(@Nullable Surface surface) {
        m18169v1();
        m18144h1();
        m18157o1(surface);
        int i = surface == null ? 0 : -1;
        m18139d1(i, i);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder) {
        m18169v1();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        m18144h1();
        this.f22782Y = true;
        this.f22780W = surfaceHolder;
        surfaceHolder.addCallback(this.f22828w);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            m18157o1(null);
            m18139d1(0, 0);
        } else {
            m18157o1(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            m18139d1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        m18169v1();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            m18144h1();
            m18157o1(surfaceView);
            m18151l1(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof SphericalGLSurfaceView)) {
                setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            m18144h1();
            this.f22781X = (SphericalGLSurfaceView) surfaceView;
            m18152m0(this.f22830x).setType(10000).setPayload(this.f22781X).send();
            this.f22781X.addVideoSurfaceListener(this.f22828w);
            m18157o1(this.f22781X.getVideoSurface());
            m18151l1(surfaceView.getHolder());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoTextureView(@Nullable TextureView textureView) {
        m18169v1();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        m18144h1();
        this.f22783Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.m21493w(f22757z0, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f22828w);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            m18157o1(null);
            m18139d1(0, 0);
        } else {
            m18153m1(surfaceTexture);
            m18139d1(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVolume(float f) {
        m18169v1();
        final float constrainValue = Util.constrainValue(f, 0.0f, 1.0f);
        if (this.f22801i0 == constrainValue) {
            return;
        }
        this.f22801i0 = constrainValue;
        m18147j1();
        this.f22804k.sendEvent(22, new ListenerSet.Event() { // from class: com.sunia.HTREnginev2.q0g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onVolumeChanged(constrainValue);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setWakeMode(int i) {
        m18169v1();
        if (i == 0) {
            this.f22759B.m55388a(false);
            this.f22760C.m54236a(false);
        } else if (i == 1) {
            this.f22759B.m55388a(true);
            this.f22760C.m54236a(false);
        } else {
            if (i != 2) {
                return;
            }
            this.f22759B.m55388a(true);
            this.f22760C.m54236a(true);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        m18169v1();
        stop(false);
    }

    /* renamed from: t0 */
    public final Player.PositionInfo m18165t0(int i, o4l o4lVar, int i2) {
        int i3;
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i4;
        long j;
        long m18128u0;
        Timeline.Period period = new Timeline.Period();
        if (o4lVar.f79306a.isEmpty()) {
            i3 = i2;
            obj = null;
            mediaItem = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = o4lVar.f79307b.periodUid;
            o4lVar.f79306a.getPeriodByUid(obj3, period);
            int i5 = period.windowIndex;
            int indexOfPeriod = o4lVar.f79306a.getIndexOfPeriod(obj3);
            Object obj4 = o4lVar.f79306a.getWindow(i5, this.window).uid;
            mediaItem = this.window.mediaItem;
            obj2 = obj3;
            i4 = indexOfPeriod;
            obj = obj4;
            i3 = i5;
        }
        if (i == 0) {
            if (o4lVar.f79307b.isAd()) {
                MediaSource.MediaPeriodId mediaPeriodId = o4lVar.f79307b;
                j = period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
                m18128u0 = m18128u0(o4lVar);
            } else {
                j = o4lVar.f79307b.nextAdGroupIndex != -1 ? m18128u0(this.f22827v0) : period.positionInWindowUs + period.durationUs;
                m18128u0 = j;
            }
        } else if (o4lVar.f79307b.isAd()) {
            j = o4lVar.f79324s;
            m18128u0 = m18128u0(o4lVar);
        } else {
            j = period.positionInWindowUs + o4lVar.f79324s;
            m18128u0 = j;
        }
        long usToMs = Util.usToMs(j);
        long usToMs2 = Util.usToMs(m18128u0);
        MediaSource.MediaPeriodId mediaPeriodId2 = o4lVar.f79307b;
        return new Player.PositionInfo(obj, i3, mediaItem, obj2, i4, usToMs, usToMs2, mediaPeriodId2.adGroupIndex, mediaPeriodId2.adIndexInAdGroup);
    }

    /* renamed from: t1 */
    public final void m18166t1(boolean z) {
        PriorityTaskManager priorityTaskManager = this.f22815p0;
        if (priorityTaskManager != null) {
            if (z && !this.f22817q0) {
                priorityTaskManager.add(0);
                this.f22817q0 = true;
            } else {
                if (z || !this.f22817q0) {
                    return;
                }
                priorityTaskManager.remove(0);
                this.f22817q0 = false;
            }
        }
    }

    /* renamed from: u1 */
    public final void m18167u1() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.f22759B.m55389b(getPlayWhenReady() && !experimentalIsSleepingForOffload());
                this.f22760C.m54237b(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.f22759B.m55389b(false);
        this.f22760C.m54237b(false);
    }

    /* renamed from: v0, reason: merged with bridge method [inline-methods] */
    public final void m18048A0(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        long j;
        boolean z;
        long j2;
        int i = this.f22764G - playbackInfoUpdate.operationAcks;
        this.f22764G = i;
        boolean z2 = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.f22765H = playbackInfoUpdate.discontinuityReason;
            this.f22766I = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.f22767J = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (i == 0) {
            Timeline timeline = playbackInfoUpdate.playbackInfo.f79306a;
            if (!this.f22827v0.f79306a.isEmpty() && timeline.isEmpty()) {
                this.f22829w0 = -1;
                this.f22833y0 = 0L;
                this.f22831x0 = 0;
            }
            if (!timeline.isEmpty()) {
                List<Timeline> m57738h = ((v4l) timeline).m57738h();
                Assertions.checkState(m57738h.size() == this.f22810n.size());
                for (int i2 = 0; i2 < m57738h.size(); i2++) {
                    this.f22810n.get(i2).f22844b = m57738h.get(i2);
                }
            }
            if (this.f22766I) {
                if (playbackInfoUpdate.playbackInfo.f79307b.equals(this.f22827v0.f79307b) && playbackInfoUpdate.playbackInfo.f79309d == this.f22827v0.f79324s) {
                    z2 = false;
                }
                if (z2) {
                    if (timeline.isEmpty() || playbackInfoUpdate.playbackInfo.f79307b.isAd()) {
                        j2 = playbackInfoUpdate.playbackInfo.f79309d;
                    } else {
                        o4l o4lVar = playbackInfoUpdate.playbackInfo;
                        j2 = m18140e1(timeline, o4lVar.f79307b, o4lVar.f79309d);
                    }
                    j = j2;
                } else {
                    j = -9223372036854775807L;
                }
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.f22766I = false;
            m18164s1(playbackInfoUpdate.playbackInfo, 1, this.f22767J, false, z, this.f22765H, j, -1);
        }
    }

    /* renamed from: v1 */
    public final void m18169v1() {
        this.f22788c.blockUninterruptible();
        if (Thread.currentThread() != getApplicationLooper().getThread()) {
            String formatInvariant = Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), getApplicationLooper().getThread().getName());
            if (this.f22811n0) {
                throw new IllegalStateException(formatInvariant);
            }
            Log.m21494w(f22757z0, formatInvariant, this.f22813o0 ? null : new IllegalStateException());
            this.f22813o0 = true;
        }
    }

    /* renamed from: w0 */
    public final int m18170w0(int i) {
        AudioTrack audioTrack = this.f22777T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.f22777T.release();
            this.f22777T = null;
        }
        if (this.f22777T == null) {
            this.f22777T = new AudioTrack(3, 4000, 4, 2, 2, 0, i);
        }
        return this.f22777T.getAudioSessionId();
    }

    @Override // com.google.android.exoplayer2.Player
    @Nullable
    public ExoPlaybackException getPlayerError() {
        m18169v1();
        return this.f22827v0.f79311f;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(int i, MediaSource mediaSource) {
        m18169v1();
        addMediaSources(i, Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(int i, List<MediaSource> list) {
        m18169v1();
        Assertions.checkArgument(i >= 0);
        Timeline currentTimeline = getCurrentTimeline();
        this.f22764G++;
        List<MediaSourceList.C4663c> m18143h0 = m18143h0(i, list);
        Timeline m18148k0 = m18148k0();
        o4l m18137b1 = m18137b1(this.f22827v0, m18148k0, m18160q0(currentTimeline, m18148k0));
        this.f22802j.m17770f(i, m18143h0, this.f22770M);
        m18164s1(m18137b1, 0, 1, false, false, 5, C4649C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        m18169v1();
        setMediaSources(m18150l0(list), i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, long j) {
        m18169v1();
        setMediaSources(Collections.singletonList(mediaSource), 0, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, boolean z) {
        m18169v1();
        m18149k1(list, -1, C4649C.TIME_UNSET, z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop(boolean z) {
        m18169v1();
        this.f22834z.m17625q(getPlayWhenReady(), 1);
        m18159p1(z, null);
        this.f22805k0 = ImmutableList.m26161of();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface(@Nullable Surface surface) {
        m18169v1();
        if (surface == null || surface != this.f22778U) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, int i, long j) {
        m18169v1();
        m18149k1(list, i, j, false);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        m18169v1();
        setMediaSources(Collections.singletonList(mediaSource), z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        m18169v1();
        setMediaSource(mediaSource);
        prepare();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        m18169v1();
        setMediaSource(mediaSource, z);
        prepare();
    }
}
