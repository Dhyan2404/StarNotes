package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MediaClock;
import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {

    /* renamed from: e */
    public final int f22206e;

    /* renamed from: g */
    @Nullable
    public RendererConfiguration f22208g;

    /* renamed from: h */
    public int f22209h;

    /* renamed from: i */
    public PlayerId f22210i;

    /* renamed from: j */
    public int f22211j;

    /* renamed from: k */
    @Nullable
    public SampleStream f22212k;

    /* renamed from: l */
    @Nullable
    public Format[] f22213l;

    /* renamed from: m */
    public long f22214m;

    /* renamed from: n */
    public long f22215n;

    /* renamed from: p */
    public boolean f22217p;

    /* renamed from: q */
    public boolean f22218q;

    /* renamed from: f */
    public final FormatHolder f22207f = new FormatHolder();

    /* renamed from: o */
    public long f22216o = Long.MIN_VALUE;

    public BaseRenderer(int i) {
        this.f22206e = i;
    }

    /* renamed from: a */
    public final void m17631a(long j, boolean z) throws ExoPlaybackException {
        this.f22217p = false;
        this.f22215n = j;
        this.f22216o = j;
        onPositionReset(j, z);
    }

    public final ExoPlaybackException createRendererException(Throwable th, @Nullable Format format, int i) {
        return createRendererException(th, format, false, i);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void disable() {
        Assertions.checkState(this.f22211j == 1);
        this.f22207f.clear();
        this.f22211j = 0;
        this.f22212k = null;
        this.f22213l = null;
        this.f22217p = false;
        onDisabled();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3) throws ExoPlaybackException {
        Assertions.checkState(this.f22211j == 0);
        this.f22208g = rendererConfiguration;
        this.f22211j = 1;
        onEnabled(z, z2);
        replaceStream(formatArr, sampleStream, j2, j3);
        m17631a(j, z);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    public final RendererConfiguration getConfiguration() {
        return (RendererConfiguration) Assertions.checkNotNull(this.f22208g);
    }

    public final FormatHolder getFormatHolder() {
        this.f22207f.clear();
        return this.f22207f;
    }

    public final int getIndex() {
        return this.f22209h;
    }

    public final long getLastResetPositionUs() {
        return this.f22215n;
    }

    @Override // com.google.android.exoplayer2.Renderer
    @Nullable
    public MediaClock getMediaClock() {
        return null;
    }

    public final PlayerId getPlayerId() {
        return (PlayerId) Assertions.checkNotNull(this.f22210i);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final long getReadingPositionUs() {
        return this.f22216o;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final int getState() {
        return this.f22211j;
    }

    @Override // com.google.android.exoplayer2.Renderer
    @Nullable
    public final SampleStream getStream() {
        return this.f22212k;
    }

    public final Format[] getStreamFormats() {
        return (Format[]) Assertions.checkNotNull(this.f22213l);
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public final int getTrackType() {
        return this.f22206e;
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.f22216o == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void init(int i, PlayerId playerId) {
        this.f22209h = i;
        this.f22210i = playerId;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.f22217p;
    }

    public final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.f22217p : ((SampleStream) Assertions.checkNotNull(this.f22212k)).isReady();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void maybeThrowStreamError() throws IOException {
        ((SampleStream) Assertions.checkNotNull(this.f22212k)).maybeThrowError();
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
    }

    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() {
    }

    public void onStreamChanged(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
    }

    public final int readSource(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        int readData = ((SampleStream) Assertions.checkNotNull(this.f22212k)).readData(formatHolder, decoderInputBuffer, i);
        if (readData == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.f22216o = Long.MIN_VALUE;
                return this.f22217p ? -4 : -3;
            }
            long j = decoderInputBuffer.timeUs + this.f22214m;
            decoderInputBuffer.timeUs = j;
            this.f22216o = Math.max(this.f22216o, j);
        } else if (readData == -5) {
            Format format = (Format) Assertions.checkNotNull(formatHolder.format);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                formatHolder.format = format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.f22214m).build();
            }
        }
        return readData;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j, long j2) throws ExoPlaybackException {
        Assertions.checkState(!this.f22217p);
        this.f22212k = sampleStream;
        if (this.f22216o == Long.MIN_VALUE) {
            this.f22216o = j;
        }
        this.f22213l = formatArr;
        this.f22214m = j2;
        onStreamChanged(formatArr, j, j2);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void reset() {
        Assertions.checkState(this.f22211j == 0);
        this.f22207f.clear();
        onReset();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void resetPosition(long j) throws ExoPlaybackException {
        m17631a(j, false);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void setCurrentStreamFinal() {
        this.f22217p = true;
    }

    public int skipSource(long j) {
        return ((SampleStream) Assertions.checkNotNull(this.f22212k)).skipData(j - this.f22214m);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void start() throws ExoPlaybackException {
        Assertions.checkState(this.f22211j == 1);
        this.f22211j = 2;
        onStarted();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void stop() {
        Assertions.checkState(this.f22211j == 2);
        this.f22211j = 1;
        onStopped();
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    public final ExoPlaybackException createRendererException(Throwable th, @Nullable Format format, boolean z, int i) {
        int i2;
        if (format != null && !this.f22218q) {
            this.f22218q = true;
            try {
                i2 = RendererCapabilities.getFormatSupport(supportsFormat(format));
            } catch (ExoPlaybackException unused) {
            } finally {
                this.f22218q = false;
            }
            return ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, i2, z, i);
        }
        i2 = 4;
        return ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, i2, z, i);
    }
}
