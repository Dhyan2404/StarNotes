package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: com.google.android.exoplayer2.source.d */
/* loaded from: classes5.dex */
public final class C4864d implements MediaPeriod, Loader.Callback<c> {

    /* renamed from: s */
    public static final String f25659s = "SingleSampleMediaPeriod";

    /* renamed from: t */
    public static final int f25660t = 1024;

    /* renamed from: e */
    public final DataSpec f25661e;

    /* renamed from: f */
    public final DataSource.Factory f25662f;

    /* renamed from: g */
    @Nullable
    public final TransferListener f25663g;

    /* renamed from: h */
    public final LoadErrorHandlingPolicy f25664h;

    /* renamed from: i */
    public final MediaSourceEventListener.EventDispatcher f25665i;

    /* renamed from: j */
    public final TrackGroupArray f25666j;

    /* renamed from: l */
    public final long f25668l;

    /* renamed from: n */
    public final Format f25670n;

    /* renamed from: o */
    public final boolean f25671o;

    /* renamed from: p */
    public boolean f25672p;

    /* renamed from: q */
    public byte[] f25673q;

    /* renamed from: r */
    public int f25674r;

    /* renamed from: k */
    public final ArrayList<b> f25667k = new ArrayList<>();

    /* renamed from: m */
    public final Loader f25669m = new Loader(f25659s);

    /* renamed from: com.google.android.exoplayer2.source.d$b */
    /* loaded from: classes5.dex */
    public final class b implements SampleStream {

        /* renamed from: h */
        public static final int f25675h = 0;

        /* renamed from: i */
        public static final int f25676i = 1;

        /* renamed from: j */
        public static final int f25677j = 2;

        /* renamed from: e */
        public int f25678e;

        /* renamed from: f */
        public boolean f25679f;

        public b() {
        }

        /* renamed from: a */
        public final void m19916a() {
            if (this.f25679f) {
                return;
            }
            C4864d.this.f25665i.downstreamFormatChanged(MimeTypes.getTrackType(C4864d.this.f25670n.sampleMimeType), C4864d.this.f25670n, 0, null, 0L);
            this.f25679f = true;
        }

        /* renamed from: b */
        public void m19917b() {
            if (this.f25678e == 2) {
                this.f25678e = 1;
            }
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return C4864d.this.f25672p;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            C4864d c4864d = C4864d.this;
            if (c4864d.f25671o) {
                return;
            }
            c4864d.f25669m.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            m19916a();
            C4864d c4864d = C4864d.this;
            boolean z = c4864d.f25672p;
            if (z && c4864d.f25673q == null) {
                this.f25678e = 2;
            }
            int i2 = this.f25678e;
            if (i2 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i & 2) != 0 || i2 == 0) {
                formatHolder.format = c4864d.f25670n;
                this.f25678e = 1;
                return -5;
            }
            if (!z) {
                return -3;
            }
            Assertions.checkNotNull(c4864d.f25673q);
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.timeUs = 0L;
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(C4864d.this.f25674r);
                ByteBuffer byteBuffer = decoderInputBuffer.data;
                C4864d c4864d2 = C4864d.this;
                byteBuffer.put(c4864d2.f25673q, 0, c4864d2.f25674r);
            }
            if ((i & 1) == 0) {
                this.f25678e = 2;
            }
            return -4;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            m19916a();
            if (j <= 0 || this.f25678e == 2) {
                return 0;
            }
            this.f25678e = 2;
            return 1;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.d$c */
    /* loaded from: classes5.dex */
    public static final class c implements Loader.Loadable {

        /* renamed from: a */
        public final long f25681a = LoadEventInfo.getNewId();

        /* renamed from: b */
        public final DataSpec f25682b;

        /* renamed from: c */
        public final StatsDataSource f25683c;

        /* renamed from: d */
        @Nullable
        public byte[] f25684d;

        public c(DataSpec dataSpec, DataSource dataSource) {
            this.f25682b = dataSpec;
            this.f25683c = new StatsDataSource(dataSource);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException {
            this.f25683c.resetBytesRead();
            try {
                this.f25683c.open(this.f25682b);
                int i = 0;
                while (i != -1) {
                    int bytesRead = (int) this.f25683c.getBytesRead();
                    byte[] bArr = this.f25684d;
                    if (bArr == null) {
                        this.f25684d = new byte[1024];
                    } else if (bytesRead == bArr.length) {
                        this.f25684d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    StatsDataSource statsDataSource = this.f25683c;
                    byte[] bArr2 = this.f25684d;
                    i = statsDataSource.read(bArr2, bytesRead, bArr2.length - bytesRead);
                }
            } finally {
                DataSourceUtil.closeQuietly(this.f25683c);
            }
        }
    }

    public C4864d(DataSpec dataSpec, DataSource.Factory factory, @Nullable TransferListener transferListener, Format format, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, boolean z) {
        this.f25661e = dataSpec;
        this.f25662f = factory;
        this.f25663g = transferListener;
        this.f25670n = format;
        this.f25668l = j;
        this.f25664h = loadErrorHandlingPolicy;
        this.f25665i = eventDispatcher;
        this.f25671o = z;
        this.f25666j = new TrackGroupArray(new TrackGroup(format));
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onLoadCanceled(c cVar, long j, long j2, boolean z) {
        StatsDataSource statsDataSource = cVar.f25683c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(cVar.f25681a, cVar.f25682b, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.f25664h.onLoadTaskConcluded(cVar.f25681a);
        this.f25665i.loadCanceled(loadEventInfo, 1, -1, null, 0, null, 0L, this.f25668l);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onLoadCompleted(c cVar, long j, long j2) {
        this.f25674r = (int) cVar.f25683c.getBytesRead();
        this.f25673q = (byte[]) Assertions.checkNotNull(cVar.f25684d);
        this.f25672p = true;
        StatsDataSource statsDataSource = cVar.f25683c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(cVar.f25681a, cVar.f25682b, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, this.f25674r);
        this.f25664h.onLoadTaskConcluded(cVar.f25681a);
        this.f25665i.loadCompleted(loadEventInfo, 1, -1, this.f25670n, 0, null, 0L, this.f25668l);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.f25672p || this.f25669m.isLoading() || this.f25669m.hasFatalError()) {
            return false;
        }
        DataSource createDataSource = this.f25662f.createDataSource();
        TransferListener transferListener = this.f25663g;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        c cVar = new c(this.f25661e, createDataSource);
        this.f25665i.loadStarted(new LoadEventInfo(cVar.f25681a, this.f25661e, this.f25669m.startLoading(cVar, this, this.f25664h.getMinimumLoadableRetryCount(1))), 1, -1, this.f25670n, 0, null, 0L, this.f25668l);
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction onLoadError(c cVar, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction createRetryAction;
        StatsDataSource statsDataSource = cVar.f25683c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(cVar.f25681a, cVar.f25682b, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        long retryDelayMsFor = this.f25664h.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, this.f25670n, 0, null, 0L, Util.usToMs(this.f25668l)), iOException, i));
        boolean z = retryDelayMsFor == C4649C.TIME_UNSET || i >= this.f25664h.getMinimumLoadableRetryCount(1);
        if (this.f25671o && z) {
            Log.m21494w(f25659s, "Loading failed, treating as end-of-stream.", iOException);
            this.f25672p = true;
            createRetryAction = Loader.DONT_RETRY;
        } else {
            createRetryAction = retryDelayMsFor != C4649C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = createRetryAction;
        boolean z2 = !loadErrorAction.isRetry();
        this.f25665i.loadError(loadEventInfo, 1, -1, this.f25670n, 0, null, 0L, this.f25668l, iOException, z2);
        if (z2) {
            this.f25664h.onLoadTaskConcluded(cVar.f25681a);
        }
        return loadErrorAction;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
    }

    /* renamed from: e */
    public void m19915e() {
        this.f25669m.release();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.f25672p ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return (this.f25672p || this.f25669m.isLoading()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.f25666j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f25669m.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (int i = 0; i < this.f25667k.size(); i++) {
            this.f25667k.get(i).m19917b();
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            SampleStream sampleStream = sampleStreamArr[i];
            if (sampleStream != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                this.f25667k.remove(sampleStream);
                sampleStreamArr[i] = null;
            }
            if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                b bVar = new b();
                this.f25667k.add(bVar);
                sampleStreamArr[i] = bVar;
                zArr2[i] = true;
            }
        }
        return j;
    }
}
