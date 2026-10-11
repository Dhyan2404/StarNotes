package com.google.android.exoplayer2.audio;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.decoder.Decoder;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MediaClock;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.MoreObjects;

/* loaded from: classes5.dex */
public abstract class DecoderAudioRenderer<T extends Decoder<DecoderInputBuffer, ? extends SimpleDecoderOutputBuffer, ? extends DecoderException>> extends BaseRenderer implements MediaClock {

    /* renamed from: A0 */
    public static final int f23073A0 = 0;

    /* renamed from: B0 */
    public static final int f23074B0 = 1;

    /* renamed from: C0 */
    public static final int f23075C0 = 2;

    /* renamed from: z0 */
    public static final String f23076z0 = "DecoderAudioRenderer";

    /* renamed from: J */
    @Nullable
    public DecoderInputBuffer f23077J;

    /* renamed from: O */
    @Nullable
    public SimpleDecoderOutputBuffer f23078O;

    /* renamed from: Q */
    @Nullable
    public DrmSession f23079Q;

    /* renamed from: Z */
    @Nullable
    public DrmSession f23080Z;

    /* renamed from: k0 */
    public int f23081k0;

    /* renamed from: q0 */
    public boolean f23082q0;

    /* renamed from: r */
    public final AudioRendererEventListener.EventDispatcher f23083r;

    /* renamed from: s */
    public final AudioSink f23084s;

    /* renamed from: t */
    public final DecoderInputBuffer f23085t;

    /* renamed from: t0 */
    public boolean f23086t0;

    /* renamed from: u */
    public DecoderCounters f23087u;

    /* renamed from: u0 */
    public long f23088u0;

    /* renamed from: v */
    public Format f23089v;

    /* renamed from: v0 */
    public boolean f23090v0;

    /* renamed from: w */
    public int f23091w;

    /* renamed from: w0 */
    public boolean f23092w0;

    /* renamed from: x */
    public int f23093x;

    /* renamed from: x0 */
    public boolean f23094x0;

    /* renamed from: y */
    public boolean f23095y;

    /* renamed from: y0 */
    public boolean f23096y0;

    /* renamed from: z */
    @Nullable
    public T f23097z;

    /* renamed from: com.google.android.exoplayer2.audio.DecoderAudioRenderer$b */
    /* loaded from: classes5.dex */
    public final class C4689b implements AudioSink.Listener {
        public C4689b() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onAudioSinkError(Exception exc) {
            Log.m21490e(DecoderAudioRenderer.f23076z0, "Audio sink error", exc);
            DecoderAudioRenderer.this.f23083r.audioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionAdvancing(long j) {
            DecoderAudioRenderer.this.f23083r.positionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            DecoderAudioRenderer.this.onPositionDiscontinuity();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean z) {
            DecoderAudioRenderer.this.f23083r.skipSilenceEnabledChanged(z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onUnderrun(int i, long j, long j2) {
            DecoderAudioRenderer.this.f23083r.underrun(i, j, j2);
        }
    }

    public DecoderAudioRenderer() {
        this((Handler) null, (AudioRendererEventListener) null, new AudioProcessor[0]);
    }

    /* renamed from: c */
    public final boolean m18471c() throws ExoPlaybackException, DecoderException, AudioSink.ConfigurationException, AudioSink.InitializationException, AudioSink.WriteException {
        if (this.f23078O == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) this.f23097z.dequeueOutputBuffer();
            this.f23078O = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i > 0) {
                this.f23087u.skippedOutputBufferCount += i;
                this.f23084s.handleDiscontinuity();
            }
        }
        if (this.f23078O.isEndOfStream()) {
            if (this.f23081k0 == 2) {
                releaseDecoder();
                m18473e();
                this.f23086t0 = true;
            } else {
                this.f23078O.release();
                this.f23078O = null;
                try {
                    m18474f();
                } catch (AudioSink.WriteException e) {
                    throw createRendererException(e, e.format, e.isRecoverable, 5002);
                }
            }
            return false;
        }
        if (this.f23086t0) {
            this.f23084s.configure(getOutputFormat(this.f23097z).buildUpon().setEncoderDelay(this.f23091w).setEncoderPadding(this.f23093x).build(), 0, null);
            this.f23086t0 = false;
        }
        AudioSink audioSink = this.f23084s;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.f23078O;
        if (!audioSink.handleBuffer(simpleDecoderOutputBuffer2.data, simpleDecoderOutputBuffer2.timeUs, 1)) {
            return false;
        }
        this.f23087u.renderedOutputBufferCount++;
        this.f23078O.release();
        this.f23078O = null;
        return true;
    }

    public DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    public abstract T createDecoder(Format format, @Nullable CryptoConfig cryptoConfig) throws DecoderException;

    /* renamed from: d */
    public final boolean m18472d() throws DecoderException, ExoPlaybackException {
        T t = this.f23097z;
        if (t == null || this.f23081k0 == 2 || this.f23094x0) {
            return false;
        }
        if (this.f23077J == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) t.dequeueInputBuffer();
            this.f23077J = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.f23081k0 == 1) {
            this.f23077J.setFlags(4);
            this.f23097z.queueInputBuffer(this.f23077J);
            this.f23077J = null;
            this.f23081k0 = 2;
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        int readSource = readSource(formatHolder, this.f23077J, 0);
        if (readSource == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (readSource != -4) {
            if (readSource == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (this.f23077J.isEndOfStream()) {
            this.f23094x0 = true;
            this.f23097z.queueInputBuffer(this.f23077J);
            this.f23077J = null;
            return false;
        }
        this.f23077J.flip();
        DecoderInputBuffer decoderInputBuffer2 = this.f23077J;
        decoderInputBuffer2.format = this.f23089v;
        onQueueInputBuffer(decoderInputBuffer2);
        this.f23097z.queueInputBuffer(this.f23077J);
        this.f23082q0 = true;
        this.f23087u.queuedInputBufferCount++;
        this.f23077J = null;
        return true;
    }

    /* renamed from: e */
    public final void m18473e() throws ExoPlaybackException {
        CryptoConfig cryptoConfig;
        if (this.f23097z != null) {
            return;
        }
        m18475g(this.f23080Z);
        DrmSession drmSession = this.f23079Q;
        if (drmSession != null) {
            cryptoConfig = drmSession.getCryptoConfig();
            if (cryptoConfig == null && this.f23079Q.getError() == null) {
                return;
            }
        } else {
            cryptoConfig = null;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            TraceUtil.beginSection("createAudioDecoder");
            this.f23097z = createDecoder(this.f23089v, cryptoConfig);
            TraceUtil.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f23083r.decoderInitialized(this.f23097z.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.f23087u.decoderInitCount++;
        } catch (DecoderException e) {
            Log.m21490e(f23076z0, "Audio codec error", e);
            this.f23083r.audioCodecError(e);
            throw createRendererException(e, this.f23089v, 4001);
        } catch (OutOfMemoryError e2) {
            throw createRendererException(e2, this.f23089v, 4001);
        }
    }

    public void experimentalSetEnableKeepAudioTrackOnSeek(boolean z) {
        this.f23095y = z;
    }

    /* renamed from: f */
    public final void m18474f() throws AudioSink.WriteException {
        this.f23096y0 = true;
        this.f23084s.playToEndOfStream();
    }

    public final void flushDecoder() throws ExoPlaybackException {
        if (this.f23081k0 != 0) {
            releaseDecoder();
            m18473e();
            return;
        }
        this.f23077J = null;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.f23078O;
        if (simpleDecoderOutputBuffer != null) {
            simpleDecoderOutputBuffer.release();
            this.f23078O = null;
        }
        this.f23097z.flush();
        this.f23082q0 = false;
    }

    /* renamed from: g */
    public final void m18475g(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f23079Q, drmSession);
        this.f23079Q = drmSession;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    @Nullable
    public MediaClock getMediaClock() {
        return this;
    }

    public abstract Format getOutputFormat(T t);

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.f23084s.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            m18477i();
        }
        return this.f23088u0;
    }

    public final int getSinkFormatSupport(Format format) {
        return this.f23084s.getFormatSupport(format);
    }

    /* renamed from: h */
    public final void m18476h(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f23080Z, drmSession);
        this.f23080Z = drmSession;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f23084s.setVolume(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            this.f23084s.setAudioAttributes((AudioAttributes) obj);
            return;
        }
        if (i == 6) {
            this.f23084s.setAuxEffectInfo((AuxEffectInfo) obj);
        } else if (i == 9) {
            this.f23084s.setSkipSilenceEnabled(((Boolean) obj).booleanValue());
        } else if (i != 10) {
            super.handleMessage(i, obj);
        } else {
            this.f23084s.setAudioSessionId(((Integer) obj).intValue());
        }
    }

    /* renamed from: i */
    public final void m18477i() {
        long currentPositionUs = this.f23084s.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.f23092w0) {
                currentPositionUs = Math.max(this.f23088u0, currentPositionUs);
            }
            this.f23088u0 = currentPositionUs;
            this.f23092w0 = false;
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.f23096y0 && this.f23084s.isEnded();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.f23084s.hasPendingData() || (this.f23089v != null && (isSourceReady() || this.f23078O != null));
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.f23089v = null;
        this.f23086t0 = true;
        try {
            m18476h(null);
            releaseDecoder();
            this.f23084s.reset();
        } finally {
            this.f23083r.disabled(this.f23087u);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.f23087u = decoderCounters;
        this.f23083r.enabled(decoderCounters);
        if (getConfiguration().tunneling) {
            this.f23084s.enableTunnelingV21();
        } else {
            this.f23084s.disableTunneling();
        }
        this.f23084s.setPlayerId(getPlayerId());
    }

    public final void onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        Format format = (Format) Assertions.checkNotNull(formatHolder.format);
        m18476h(formatHolder.drmSession);
        Format format2 = this.f23089v;
        this.f23089v = format;
        this.f23091w = format.encoderDelay;
        this.f23093x = format.encoderPadding;
        T t = this.f23097z;
        if (t == null) {
            m18473e();
            this.f23083r.inputFormatChanged(this.f23089v, null);
            return;
        }
        DecoderReuseEvaluation decoderReuseEvaluation = this.f23080Z != this.f23079Q ? new DecoderReuseEvaluation(t.getName(), format2, format, 0, 128) : canReuseDecoder(t.getName(), format2, format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.f23082q0) {
                this.f23081k0 = 1;
            } else {
                releaseDecoder();
                m18473e();
                this.f23086t0 = true;
            }
        }
        this.f23083r.inputFormatChanged(this.f23089v, decoderReuseEvaluation);
    }

    @CallSuper
    public void onPositionDiscontinuity() {
        this.f23092w0 = true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        if (this.f23095y) {
            this.f23084s.experimentalFlushWithoutAudioTrackRelease();
        } else {
            this.f23084s.flush();
        }
        this.f23088u0 = j;
        this.f23090v0 = true;
        this.f23092w0 = true;
        this.f23094x0 = false;
        this.f23096y0 = false;
        if (this.f23097z != null) {
            flushDecoder();
        }
    }

    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        if (!this.f23090v0 || decoderInputBuffer.isDecodeOnly()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.timeUs - this.f23088u0) > 500000) {
            this.f23088u0 = decoderInputBuffer.timeUs;
        }
        this.f23090v0 = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        this.f23084s.play();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        m18477i();
        this.f23084s.pause();
    }

    public final void releaseDecoder() {
        this.f23077J = null;
        this.f23078O = null;
        this.f23081k0 = 0;
        this.f23082q0 = false;
        T t = this.f23097z;
        if (t != null) {
            this.f23087u.decoderReleaseCount++;
            t.release();
            this.f23083r.decoderReleased(this.f23097z.getName());
            this.f23097z = null;
        }
        m18475g(null);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.f23096y0) {
            try {
                this.f23084s.playToEndOfStream();
                return;
            } catch (AudioSink.WriteException e) {
                throw createRendererException(e, e.format, e.isRecoverable, 5002);
            }
        }
        if (this.f23089v == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.f23085t.clear();
            int readSource = readSource(formatHolder, this.f23085t, 2);
            if (readSource != -5) {
                if (readSource == -4) {
                    Assertions.checkState(this.f23085t.isEndOfStream());
                    this.f23094x0 = true;
                    try {
                        m18474f();
                        return;
                    } catch (AudioSink.WriteException e2) {
                        throw createRendererException(e2, null, 5002);
                    }
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        m18473e();
        if (this.f23097z != null) {
            try {
                TraceUtil.beginSection("drainAndFeed");
                do {
                } while (m18471c());
                do {
                } while (m18472d());
                TraceUtil.endSection();
                this.f23087u.ensureUpdated();
            } catch (AudioSink.ConfigurationException e3) {
                throw createRendererException(e3, e3.format, 5001);
            } catch (AudioSink.InitializationException e4) {
                throw createRendererException(e4, e4.format, e4.isRecoverable, 5001);
            } catch (AudioSink.WriteException e5) {
                throw createRendererException(e5, e5.format, e5.isRecoverable, 5002);
            } catch (DecoderException e6) {
                Log.m21490e(f23076z0, "Audio codec error", e6);
                this.f23083r.audioCodecError(e6);
                throw createRendererException(e6, this.f23089v, 4003);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.f23084s.setPlaybackParameters(playbackParameters);
    }

    public final boolean sinkSupportsFormat(Format format) {
        return this.f23084s.supportsFormat(format);
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public final int supportsFormat(Format format) {
        if (!MimeTypes.isAudio(format.sampleMimeType)) {
            return RendererCapabilities.create(0);
        }
        int supportsFormatInternal = supportsFormatInternal(format);
        if (supportsFormatInternal <= 2) {
            return RendererCapabilities.create(supportsFormatInternal);
        }
        return RendererCapabilities.create(supportsFormatInternal, 8, Util.SDK_INT >= 21 ? 32 : 0);
    }

    public abstract int supportsFormatInternal(Format format);

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, null, audioProcessorArr);
    }

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, new DefaultAudioSink.Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessorArr).build());
    }

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        super(1);
        this.f23083r = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.f23084s = audioSink;
        audioSink.setListener(new C4689b());
        this.f23085t = DecoderInputBuffer.newNoDataInstance();
        this.f23081k0 = 0;
        this.f23086t0 = true;
    }
}
