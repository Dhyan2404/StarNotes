package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.decoder.Decoder;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TimedValueQueue;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;

/* loaded from: classes5.dex */
public abstract class DecoderVideoRenderer extends BaseRenderer {

    /* renamed from: M0 */
    public static final String f28494M0 = "DecoderVideoRenderer";

    /* renamed from: N0 */
    public static final int f28495N0 = 0;

    /* renamed from: O0 */
    public static final int f28496O0 = 1;

    /* renamed from: P0 */
    public static final int f28497P0 = 2;

    /* renamed from: A0 */
    public long f28498A0;

    /* renamed from: B0 */
    public long f28499B0;

    /* renamed from: C0 */
    public boolean f28500C0;

    /* renamed from: D0 */
    public boolean f28501D0;

    /* renamed from: E0 */
    public boolean f28502E0;

    /* renamed from: F0 */
    @Nullable
    public VideoSize f28503F0;

    /* renamed from: G0 */
    public long f28504G0;

    /* renamed from: H0 */
    public int f28505H0;

    /* renamed from: I0 */
    public int f28506I0;

    /* renamed from: J */
    public VideoDecoderOutputBuffer f28507J;

    /* renamed from: J0 */
    public int f28508J0;

    /* renamed from: K0 */
    public long f28509K0;

    /* renamed from: L0 */
    public long f28510L0;

    /* renamed from: O */
    public int f28511O;

    /* renamed from: Q */
    @Nullable
    public Object f28512Q;

    /* renamed from: Z */
    @Nullable
    public Surface f28513Z;
    protected DecoderCounters decoderCounters;

    /* renamed from: k0 */
    @Nullable
    public VideoDecoderOutputBufferRenderer f28514k0;

    /* renamed from: q0 */
    @Nullable
    public VideoFrameMetadataListener f28515q0;

    /* renamed from: r */
    public final long f28516r;

    /* renamed from: s */
    public final int f28517s;

    /* renamed from: t */
    public final VideoRendererEventListener.EventDispatcher f28518t;

    /* renamed from: t0 */
    @Nullable
    public DrmSession f28519t0;

    /* renamed from: u */
    public final TimedValueQueue<Format> f28520u;

    /* renamed from: u0 */
    @Nullable
    public DrmSession f28521u0;

    /* renamed from: v */
    public final DecoderInputBuffer f28522v;

    /* renamed from: v0 */
    public int f28523v0;

    /* renamed from: w */
    public Format f28524w;

    /* renamed from: w0 */
    public boolean f28525w0;

    /* renamed from: x */
    public Format f28526x;

    /* renamed from: x0 */
    public boolean f28527x0;

    /* renamed from: y */
    @Nullable
    public Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> f28528y;

    /* renamed from: y0 */
    public boolean f28529y0;

    /* renamed from: z */
    public DecoderInputBuffer f28530z;

    /* renamed from: z0 */
    public boolean f28531z0;

    public DecoderVideoRenderer(long j, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i) {
        super(2);
        this.f28516r = j;
        this.f28517s = i;
        this.f28499B0 = C4649C.TIME_UNSET;
        m21571c();
        this.f28520u = new TimedValueQueue<>();
        this.f28522v = DecoderInputBuffer.newNoDataInstance();
        this.f28518t = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.f28523v0 = 0;
        this.f28511O = -1;
    }

    /* renamed from: g */
    public static boolean m21568g(long j) {
        return j < -30000;
    }

    /* renamed from: h */
    public static boolean m21569h(long j) {
        return j < -500000;
    }

    /* renamed from: b */
    public final void m21570b() {
        this.f28527x0 = false;
    }

    /* renamed from: c */
    public final void m21571c() {
        this.f28503F0 = null;
    }

    public DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    public abstract Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> createDecoder(Format format, @Nullable CryptoConfig cryptoConfig) throws DecoderException;

    /* renamed from: d */
    public final boolean m21572d(long j, long j2) throws ExoPlaybackException, DecoderException {
        if (this.f28507J == null) {
            VideoDecoderOutputBuffer dequeueOutputBuffer = this.f28528y.dequeueOutputBuffer();
            this.f28507J = dequeueOutputBuffer;
            if (dequeueOutputBuffer == null) {
                return false;
            }
            DecoderCounters decoderCounters = this.decoderCounters;
            int i = decoderCounters.skippedOutputBufferCount;
            int i2 = dequeueOutputBuffer.skippedOutputBufferCount;
            decoderCounters.skippedOutputBufferCount = i + i2;
            this.f28508J0 -= i2;
        }
        if (!this.f28507J.isEndOfStream()) {
            boolean m21584r = m21584r(j, j2);
            if (m21584r) {
                onProcessedOutputBuffer(this.f28507J.timeUs);
                this.f28507J = null;
            }
            return m21584r;
        }
        if (this.f28523v0 == 2) {
            releaseDecoder();
            m21575i();
        } else {
            this.f28507J.release();
            this.f28507J = null;
            this.f28502E0 = true;
        }
        return false;
    }

    public void dropOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        updateDroppedBufferCounters(0, 1);
        videoDecoderOutputBuffer.release();
    }

    /* renamed from: e */
    public final boolean m21573e() throws DecoderException, ExoPlaybackException {
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.f28528y;
        if (decoder == null || this.f28523v0 == 2 || this.f28501D0) {
            return false;
        }
        if (this.f28530z == null) {
            DecoderInputBuffer dequeueInputBuffer = decoder.dequeueInputBuffer();
            this.f28530z = dequeueInputBuffer;
            if (dequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.f28523v0 == 1) {
            this.f28530z.setFlags(4);
            this.f28528y.queueInputBuffer(this.f28530z);
            this.f28530z = null;
            this.f28523v0 = 2;
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        int readSource = readSource(formatHolder, this.f28530z, 0);
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
        if (this.f28530z.isEndOfStream()) {
            this.f28501D0 = true;
            this.f28528y.queueInputBuffer(this.f28530z);
            this.f28530z = null;
            return false;
        }
        if (this.f28500C0) {
            this.f28520u.add(this.f28530z.timeUs, this.f28524w);
            this.f28500C0 = false;
        }
        this.f28530z.flip();
        DecoderInputBuffer decoderInputBuffer = this.f28530z;
        decoderInputBuffer.format = this.f28524w;
        onQueueInputBuffer(decoderInputBuffer);
        this.f28528y.queueInputBuffer(this.f28530z);
        this.f28508J0++;
        this.f28525w0 = true;
        this.decoderCounters.queuedInputBufferCount++;
        this.f28530z = null;
        return true;
    }

    /* renamed from: f */
    public final boolean m21574f() {
        return this.f28511O != -1;
    }

    @CallSuper
    public void flushDecoder() throws ExoPlaybackException {
        this.f28508J0 = 0;
        if (this.f28523v0 != 0) {
            releaseDecoder();
            m21575i();
            return;
        }
        this.f28530z = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f28507J;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.f28507J = null;
        }
        this.f28528y.flush();
        this.f28525w0 = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
        } else if (i == 7) {
            this.f28515q0 = (VideoFrameMetadataListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    /* renamed from: i */
    public final void m21575i() throws ExoPlaybackException {
        CryptoConfig cryptoConfig;
        if (this.f28528y != null) {
            return;
        }
        m21585s(this.f28521u0);
        DrmSession drmSession = this.f28519t0;
        if (drmSession != null) {
            cryptoConfig = drmSession.getCryptoConfig();
            if (cryptoConfig == null && this.f28519t0.getError() == null) {
                return;
            }
        } else {
            cryptoConfig = null;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f28528y = createDecoder(this.f28524w, cryptoConfig);
            setDecoderOutputMode(this.f28511O);
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f28518t.decoderInitialized(this.f28528y.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (DecoderException e) {
            Log.m21490e(f28494M0, "Video codec error", e);
            this.f28518t.videoCodecError(e);
            throw createRendererException(e, this.f28524w, 4001);
        } catch (OutOfMemoryError e2) {
            throw createRendererException(e2, this.f28524w, 4001);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.f28502E0;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        if (this.f28524w != null && ((isSourceReady() || this.f28507J != null) && (this.f28527x0 || !m21574f()))) {
            this.f28499B0 = C4649C.TIME_UNSET;
            return true;
        }
        if (this.f28499B0 == C4649C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f28499B0) {
            return true;
        }
        this.f28499B0 = C4649C.TIME_UNSET;
        return false;
    }

    /* renamed from: j */
    public final void m21576j() {
        if (this.f28505H0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f28518t.droppedFrames(this.f28505H0, elapsedRealtime - this.f28504G0);
            this.f28505H0 = 0;
            this.f28504G0 = elapsedRealtime;
        }
    }

    /* renamed from: k */
    public final void m21577k() {
        this.f28531z0 = true;
        if (this.f28527x0) {
            return;
        }
        this.f28527x0 = true;
        this.f28518t.renderedFirstFrame(this.f28512Q);
    }

    /* renamed from: l */
    public final void m21578l(int i, int i2) {
        VideoSize videoSize = this.f28503F0;
        if (videoSize != null && videoSize.width == i && videoSize.height == i2) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(i, i2);
        this.f28503F0 = videoSize2;
        this.f28518t.videoSizeChanged(videoSize2);
    }

    /* renamed from: m */
    public final void m21579m() {
        if (this.f28527x0) {
            this.f28518t.renderedFirstFrame(this.f28512Q);
        }
    }

    public boolean maybeDropBuffersToKeyframe(long j) throws ExoPlaybackException {
        int skipSource = skipSource(j);
        if (skipSource == 0) {
            return false;
        }
        this.decoderCounters.droppedToKeyframeCount++;
        updateDroppedBufferCounters(skipSource, this.f28508J0);
        flushDecoder();
        return true;
    }

    /* renamed from: n */
    public final void m21580n() {
        VideoSize videoSize = this.f28503F0;
        if (videoSize != null) {
            this.f28518t.videoSizeChanged(videoSize);
        }
    }

    /* renamed from: o */
    public final void m21581o() {
        m21580n();
        m21570b();
        if (getState() == 2) {
            m21586t();
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.f28524w = null;
        m21571c();
        m21570b();
        try {
            m21587u(null);
            releaseDecoder();
        } finally {
            this.f28518t.disabled(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.f28518t.enabled(decoderCounters);
        this.f28529y0 = z2;
        this.f28531z0 = false;
    }

    @CallSuper
    public void onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        this.f28500C0 = true;
        Format format = (Format) Assertions.checkNotNull(formatHolder.format);
        m21587u(formatHolder.drmSession);
        Format format2 = this.f28524w;
        this.f28524w = format;
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.f28528y;
        if (decoder == null) {
            m21575i();
            this.f28518t.inputFormatChanged(this.f28524w, null);
            return;
        }
        DecoderReuseEvaluation decoderReuseEvaluation = this.f28521u0 != this.f28519t0 ? new DecoderReuseEvaluation(decoder.getName(), format2, format, 0, 128) : canReuseDecoder(decoder.getName(), format2, format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.f28525w0) {
                this.f28523v0 = 1;
            } else {
                releaseDecoder();
                m21575i();
            }
        }
        this.f28518t.inputFormatChanged(this.f28524w, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.f28501D0 = false;
        this.f28502E0 = false;
        m21570b();
        this.f28498A0 = C4649C.TIME_UNSET;
        this.f28506I0 = 0;
        if (this.f28528y != null) {
            flushDecoder();
        }
        if (z) {
            m21586t();
        } else {
            this.f28499B0 = C4649C.TIME_UNSET;
        }
        this.f28520u.clear();
    }

    @CallSuper
    public void onProcessedOutputBuffer(long j) {
        this.f28508J0--;
    }

    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        this.f28505H0 = 0;
        this.f28504G0 = SystemClock.elapsedRealtime();
        this.f28509K0 = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.f28499B0 = C4649C.TIME_UNSET;
        m21576j();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
        this.f28510L0 = j2;
        super.onStreamChanged(formatArr, j, j2);
    }

    /* renamed from: p */
    public final void m21582p() {
        m21571c();
        m21570b();
    }

    /* renamed from: q */
    public final void m21583q() {
        m21580n();
        m21579m();
    }

    /* renamed from: r */
    public final boolean m21584r(long j, long j2) throws ExoPlaybackException, DecoderException {
        if (this.f28498A0 == C4649C.TIME_UNSET) {
            this.f28498A0 = j;
        }
        long j3 = this.f28507J.timeUs - j;
        if (!m21574f()) {
            if (!m21568g(j3)) {
                return false;
            }
            skipOutputBuffer(this.f28507J);
            return true;
        }
        long j4 = this.f28507J.timeUs - this.f28510L0;
        Format pollFloor = this.f28520u.pollFloor(j4);
        if (pollFloor != null) {
            this.f28526x = pollFloor;
        }
        long elapsedRealtime = (SystemClock.elapsedRealtime() * 1000) - this.f28509K0;
        boolean z = getState() == 2;
        if ((this.f28531z0 ? !this.f28527x0 : z || this.f28529y0) || (z && shouldForceRenderOutputBuffer(j3, elapsedRealtime))) {
            renderOutputBuffer(this.f28507J, j4, this.f28526x);
            return true;
        }
        if (!z || j == this.f28498A0 || (shouldDropBuffersToKeyframe(j3, j2) && maybeDropBuffersToKeyframe(j))) {
            return false;
        }
        if (shouldDropOutputBuffer(j3, j2)) {
            dropOutputBuffer(this.f28507J);
            return true;
        }
        if (j3 < 30000) {
            renderOutputBuffer(this.f28507J, j4, this.f28526x);
            return true;
        }
        return false;
    }

    @CallSuper
    public void releaseDecoder() {
        this.f28530z = null;
        this.f28507J = null;
        this.f28523v0 = 0;
        this.f28525w0 = false;
        this.f28508J0 = 0;
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.f28528y;
        if (decoder != null) {
            this.decoderCounters.decoderReleaseCount++;
            decoder.release();
            this.f28518t.decoderReleased(this.f28528y.getName());
            this.f28528y = null;
        }
        m21585s(null);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.f28502E0) {
            return;
        }
        if (this.f28524w == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.f28522v.clear();
            int readSource = readSource(formatHolder, this.f28522v, 2);
            if (readSource != -5) {
                if (readSource == -4) {
                    Assertions.checkState(this.f28522v.isEndOfStream());
                    this.f28501D0 = true;
                    this.f28502E0 = true;
                    return;
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        m21575i();
        if (this.f28528y != null) {
            try {
                TraceUtil.beginSection("drainAndFeed");
                do {
                } while (m21572d(j, j2));
                do {
                } while (m21573e());
                TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            } catch (DecoderException e) {
                Log.m21490e(f28494M0, "Video codec error", e);
                this.f28518t.videoCodecError(e);
                throw createRendererException(e, this.f28524w, 4003);
            }
        }
    }

    public void renderOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j, Format format) throws DecoderException {
        VideoFrameMetadataListener videoFrameMetadataListener = this.f28515q0;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, System.nanoTime(), format, null);
        }
        this.f28509K0 = Util.msToUs(SystemClock.elapsedRealtime() * 1000);
        int i = videoDecoderOutputBuffer.mode;
        boolean z = i == 1 && this.f28513Z != null;
        boolean z2 = i == 0 && this.f28514k0 != null;
        if (!z2 && !z) {
            dropOutputBuffer(videoDecoderOutputBuffer);
            return;
        }
        m21578l(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z2) {
            this.f28514k0.setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            renderOutputBufferToSurface(videoDecoderOutputBuffer, this.f28513Z);
        }
        this.f28506I0 = 0;
        this.decoderCounters.renderedOutputBufferCount++;
        m21577k();
    }

    public abstract void renderOutputBufferToSurface(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws DecoderException;

    /* renamed from: s */
    public final void m21585s(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f28519t0, drmSession);
        this.f28519t0 = drmSession;
    }

    public abstract void setDecoderOutputMode(int i);

    public final void setOutput(@Nullable Object obj) {
        if (obj instanceof Surface) {
            this.f28513Z = (Surface) obj;
            this.f28514k0 = null;
            this.f28511O = 1;
        } else if (obj instanceof VideoDecoderOutputBufferRenderer) {
            this.f28513Z = null;
            this.f28514k0 = (VideoDecoderOutputBufferRenderer) obj;
            this.f28511O = 0;
        } else {
            this.f28513Z = null;
            this.f28514k0 = null;
            this.f28511O = -1;
            obj = null;
        }
        if (this.f28512Q == obj) {
            if (obj != null) {
                m21583q();
                return;
            }
            return;
        }
        this.f28512Q = obj;
        if (obj == null) {
            m21582p();
            return;
        }
        if (this.f28528y != null) {
            setDecoderOutputMode(this.f28511O);
        }
        m21581o();
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2) {
        return m21569h(j);
    }

    public boolean shouldDropOutputBuffer(long j, long j2) {
        return m21568g(j);
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return m21568g(j) && j2 > 100000;
    }

    public void skipOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.decoderCounters.skippedOutputBufferCount++;
        videoDecoderOutputBuffer.release();
    }

    /* renamed from: t */
    public final void m21586t() {
        this.f28499B0 = this.f28516r > 0 ? SystemClock.elapsedRealtime() + this.f28516r : C4649C.TIME_UNSET;
    }

    /* renamed from: u */
    public final void m21587u(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f28521u0, drmSession);
        this.f28521u0 = drmSession;
    }

    public void updateDroppedBufferCounters(int i, int i2) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        decoderCounters.droppedBufferCount += i3;
        this.f28505H0 += i3;
        int i4 = this.f28506I0 + i3;
        this.f28506I0 = i4;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i4, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i5 = this.f28517s;
        if (i5 <= 0 || this.f28505H0 < i5) {
            return;
        }
        m21576j();
    }
}
