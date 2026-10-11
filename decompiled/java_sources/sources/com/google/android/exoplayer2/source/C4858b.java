package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.C4858b;
import com.google.android.exoplayer2.source.IcyDataSource;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* renamed from: com.google.android.exoplayer2.source.b */
/* loaded from: classes5.dex */
public final class C4858b implements MediaPeriod, ExtractorOutput, Loader.Callback<a>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {

    /* renamed from: D0 */
    public static final long f25504D0 = 10000;

    /* renamed from: E0 */
    public static final Map<String, String> f25505E0 = m19825p();

    /* renamed from: F0 */
    public static final Format f25506F0 = new Format.Builder().setId("icy").setSampleMimeType(MimeTypes.APPLICATION_ICY).build();

    /* renamed from: A0 */
    public int f25507A0;

    /* renamed from: B0 */
    public boolean f25508B0;

    /* renamed from: C0 */
    public boolean f25509C0;

    /* renamed from: J */
    public boolean f25510J;

    /* renamed from: O */
    public e f25511O;

    /* renamed from: Q */
    public SeekMap f25512Q;

    /* renamed from: e */
    public final Uri f25514e;

    /* renamed from: f */
    public final DataSource f25515f;

    /* renamed from: g */
    public final DrmSessionManager f25516g;

    /* renamed from: h */
    public final LoadErrorHandlingPolicy f25517h;

    /* renamed from: i */
    public final MediaSourceEventListener.EventDispatcher f25518i;

    /* renamed from: j */
    public final DrmSessionEventListener.EventDispatcher f25519j;

    /* renamed from: k */
    public final b f25520k;

    /* renamed from: k0 */
    public boolean f25521k0;

    /* renamed from: l */
    public final Allocator f25522l;

    /* renamed from: m */
    @Nullable
    public final String f25523m;

    /* renamed from: n */
    public final long f25524n;

    /* renamed from: p */
    public final ProgressiveMediaExtractor f25526p;

    /* renamed from: t0 */
    public boolean f25532t0;

    /* renamed from: u */
    @Nullable
    public MediaPeriod.Callback f25533u;

    /* renamed from: u0 */
    public boolean f25534u0;

    /* renamed from: v */
    @Nullable
    public IcyHeaders f25535v;

    /* renamed from: v0 */
    public int f25536v0;

    /* renamed from: x0 */
    public long f25540x0;

    /* renamed from: y */
    public boolean f25541y;

    /* renamed from: z */
    public boolean f25543z;

    /* renamed from: z0 */
    public boolean f25544z0;

    /* renamed from: o */
    public final Loader f25525o = new Loader("ProgressiveMediaPeriod");

    /* renamed from: q */
    public final ConditionVariable f25527q = new ConditionVariable();

    /* renamed from: r */
    public final Runnable f25529r = new Runnable() { // from class: com.sunia.HTREnginev2.o8l
        @Override // java.lang.Runnable
        public final void run() {
            C4858b.this.m19849x();
        }
    };

    /* renamed from: s */
    public final Runnable f25530s = new Runnable() { // from class: com.sunia.HTREnginev2.p8l
        @Override // java.lang.Runnable
        public final void run() {
            C4858b.this.m19826v();
        }
    };

    /* renamed from: t */
    public final Handler f25531t = Util.createHandlerForCurrentLooper();

    /* renamed from: x */
    public d[] f25539x = new d[0];

    /* renamed from: w */
    public SampleQueue[] f25537w = new SampleQueue[0];

    /* renamed from: y0 */
    public long f25542y0 = C4649C.TIME_UNSET;

    /* renamed from: w0 */
    public long f25538w0 = -1;

    /* renamed from: Z */
    public long f25513Z = C4649C.TIME_UNSET;

    /* renamed from: q0 */
    public int f25528q0 = 1;

    /* renamed from: com.google.android.exoplayer2.source.b$a */
    /* loaded from: classes5.dex */
    public final class a implements Loader.Loadable, IcyDataSource.Listener {

        /* renamed from: b */
        public final Uri f25546b;

        /* renamed from: c */
        public final StatsDataSource f25547c;

        /* renamed from: d */
        public final ProgressiveMediaExtractor f25548d;

        /* renamed from: e */
        public final ExtractorOutput f25549e;

        /* renamed from: f */
        public final ConditionVariable f25550f;

        /* renamed from: h */
        public volatile boolean f25552h;

        /* renamed from: j */
        public long f25554j;

        /* renamed from: m */
        @Nullable
        public TrackOutput f25557m;

        /* renamed from: n */
        public boolean f25558n;

        /* renamed from: g */
        public final PositionHolder f25551g = new PositionHolder();

        /* renamed from: i */
        public boolean f25553i = true;

        /* renamed from: l */
        public long f25556l = -1;

        /* renamed from: a */
        public final long f25545a = LoadEventInfo.getNewId();

        /* renamed from: k */
        public DataSpec f25555k = m19858g(0);

        public a(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, ExtractorOutput extractorOutput, ConditionVariable conditionVariable) {
            this.f25546b = uri;
            this.f25547c = new StatsDataSource(dataSource);
            this.f25548d = progressiveMediaExtractor;
            this.f25549e = extractorOutput;
            this.f25550f = conditionVariable;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.f25552h = true;
        }

        /* renamed from: g */
        public final DataSpec m19858g(long j) {
            return new DataSpec.Builder().setUri(this.f25546b).setPosition(j).setKey(C4858b.this.f25523m).setFlags(6).setHttpRequestHeaders(C4858b.f25505E0).build();
        }

        /* renamed from: h */
        public final void m19859h(long j, long j2) {
            this.f25551g.position = j;
            this.f25554j = j2;
            this.f25553i = true;
            this.f25558n = false;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException {
            int i = 0;
            while (i == 0 && !this.f25552h) {
                try {
                    long j = this.f25551g.position;
                    DataSpec m19858g = m19858g(j);
                    this.f25555k = m19858g;
                    long open = this.f25547c.open(m19858g);
                    this.f25556l = open;
                    if (open != -1) {
                        this.f25556l = open + j;
                    }
                    C4858b.this.f25535v = IcyHeaders.parse(this.f25547c.getResponseHeaders());
                    DataReader dataReader = this.f25547c;
                    if (C4858b.this.f25535v != null && C4858b.this.f25535v.metadataInterval != -1) {
                        dataReader = new IcyDataSource(this.f25547c, C4858b.this.f25535v.metadataInterval, this);
                        TrackOutput m19846s = C4858b.this.m19846s();
                        this.f25557m = m19846s;
                        m19846s.format(C4858b.f25506F0);
                    }
                    long j2 = j;
                    this.f25548d.init(dataReader, this.f25546b, this.f25547c.getResponseHeaders(), j, this.f25556l, this.f25549e);
                    if (C4858b.this.f25535v != null) {
                        this.f25548d.disableSeekingOnMp3Streams();
                    }
                    if (this.f25553i) {
                        this.f25548d.seek(j2, this.f25554j);
                        this.f25553i = false;
                    }
                    while (true) {
                        long j3 = j2;
                        while (i == 0 && !this.f25552h) {
                            try {
                                this.f25550f.block();
                                i = this.f25548d.read(this.f25551g);
                                j2 = this.f25548d.getCurrentInputPosition();
                                if (j2 > C4858b.this.f25524n + j3) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f25550f.close();
                        C4858b.this.f25531t.post(C4858b.this.f25530s);
                    }
                    if (i == 1) {
                        i = 0;
                    } else if (this.f25548d.getCurrentInputPosition() != -1) {
                        this.f25551g.position = this.f25548d.getCurrentInputPosition();
                    }
                    DataSourceUtil.closeQuietly(this.f25547c);
                } catch (Throwable th) {
                    if (i != 1 && this.f25548d.getCurrentInputPosition() != -1) {
                        this.f25551g.position = this.f25548d.getCurrentInputPosition();
                    }
                    DataSourceUtil.closeQuietly(this.f25547c);
                    throw th;
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.IcyDataSource.Listener
        public void onIcyMetadata(ParsableByteArray parsableByteArray) {
            long max = !this.f25558n ? this.f25554j : Math.max(C4858b.this.m19845r(), this.f25554j);
            int bytesLeft = parsableByteArray.bytesLeft();
            TrackOutput trackOutput = (TrackOutput) Assertions.checkNotNull(this.f25557m);
            trackOutput.sampleData(parsableByteArray, bytesLeft);
            trackOutput.sampleMetadata(max, 1, bytesLeft, 0, null);
            this.f25558n = true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.b$b */
    /* loaded from: classes5.dex */
    public interface b {
        void onSourceInfoRefreshed(long j, boolean z, boolean z2);
    }

    /* renamed from: com.google.android.exoplayer2.source.b$c */
    /* loaded from: classes5.dex */
    public final class c implements SampleStream {

        /* renamed from: e */
        public final int f25560e;

        public c(int i) {
            this.f25560e = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return C4858b.this.m19848u(this.f25560e);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            C4858b.this.m19829B(this.f25560e);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return C4858b.this.m19834G(this.f25560e, formatHolder, decoderInputBuffer, i);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return C4858b.this.m19838K(this.f25560e, j);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.b$d */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a */
        public final int f25562a;

        /* renamed from: b */
        public final boolean f25563b;

        public d(int i, boolean z) {
            this.f25562a = i;
            this.f25563b = z;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f25562a == dVar.f25562a && this.f25563b == dVar.f25563b;
        }

        public int hashCode() {
            return (this.f25562a * 31) + (this.f25563b ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.b$e */
    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: a */
        public final TrackGroupArray f25564a;

        /* renamed from: b */
        public final boolean[] f25565b;

        /* renamed from: c */
        public final boolean[] f25566c;

        /* renamed from: d */
        public final boolean[] f25567d;

        public e(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f25564a = trackGroupArray;
            this.f25565b = zArr;
            int i = trackGroupArray.length;
            this.f25566c = new boolean[i];
            this.f25567d = new boolean[i];
        }
    }

    public C4858b(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, b bVar, Allocator allocator, @Nullable String str, int i) {
        this.f25514e = uri;
        this.f25515f = dataSource;
        this.f25516g = drmSessionManager;
        this.f25519j = eventDispatcher;
        this.f25517h = loadErrorHandlingPolicy;
        this.f25518i = eventDispatcher2;
        this.f25520k = bVar;
        this.f25522l = allocator;
        this.f25523m = str;
        this.f25524n = i;
        this.f25526p = progressiveMediaExtractor;
    }

    /* renamed from: p */
    public static Map<String, String> m19825p() {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m19826v() {
        if (this.f25509C0) {
            return;
        }
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.f25533u)).onContinueLoadingRequested(this);
    }

    /* renamed from: A */
    public void m19828A() throws IOException {
        this.f25525o.maybeThrowError(this.f25517h.getMinimumLoadableRetryCount(this.f25528q0));
    }

    /* renamed from: B */
    public void m19829B(int i) throws IOException {
        this.f25537w[i].maybeThrowError();
        m19828A();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public void onLoadCanceled(a aVar, long j, long j2, boolean z) {
        StatsDataSource statsDataSource = aVar.f25547c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(aVar.f25545a, aVar.f25555k, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.f25517h.onLoadTaskConcluded(aVar.f25545a);
        this.f25518i.loadCanceled(loadEventInfo, 1, -1, null, 0, null, aVar.f25554j, this.f25513Z);
        if (z) {
            return;
        }
        m19843o(aVar);
        for (SampleQueue sampleQueue : this.f25537w) {
            sampleQueue.reset();
        }
        if (this.f25536v0 > 0) {
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.f25533u)).onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public void onLoadCompleted(a aVar, long j, long j2) {
        SeekMap seekMap;
        if (this.f25513Z == C4649C.TIME_UNSET && (seekMap = this.f25512Q) != null) {
            boolean isSeekable = seekMap.isSeekable();
            long m19845r = m19845r();
            long j3 = m19845r == Long.MIN_VALUE ? 0L : m19845r + 10000;
            this.f25513Z = j3;
            this.f25520k.onSourceInfoRefreshed(j3, isSeekable, this.f25521k0);
        }
        StatsDataSource statsDataSource = aVar.f25547c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(aVar.f25545a, aVar.f25555k, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.f25517h.onLoadTaskConcluded(aVar.f25545a);
        this.f25518i.loadCompleted(loadEventInfo, 1, -1, null, 0, null, aVar.f25554j, this.f25513Z);
        m19843o(aVar);
        this.f25508B0 = true;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.f25533u)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction onLoadError(a aVar, long j, long j2, IOException iOException, int i) {
        boolean z;
        a aVar2;
        Loader.LoadErrorAction createRetryAction;
        m19843o(aVar);
        StatsDataSource statsDataSource = aVar.f25547c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(aVar.f25545a, aVar.f25555k, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        long retryDelayMsFor = this.f25517h.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, null, 0, null, Util.usToMs(aVar.f25554j), Util.usToMs(this.f25513Z)), iOException, i));
        if (retryDelayMsFor == C4649C.TIME_UNSET) {
            createRetryAction = Loader.DONT_RETRY_FATAL;
        } else {
            int m19844q = m19844q();
            if (m19844q > this.f25507A0) {
                aVar2 = aVar;
                z = true;
            } else {
                z = false;
                aVar2 = aVar;
            }
            createRetryAction = m19842n(aVar2, m19844q) ? Loader.createRetryAction(z, retryDelayMsFor) : Loader.DONT_RETRY;
        }
        boolean z2 = !createRetryAction.isRetry();
        this.f25518i.loadError(loadEventInfo, 1, -1, null, 0, null, aVar.f25554j, this.f25513Z, iOException, z2);
        if (z2) {
            this.f25517h.onLoadTaskConcluded(aVar.f25545a);
        }
        return createRetryAction;
    }

    /* renamed from: F */
    public final TrackOutput m19833F(d dVar) {
        int length = this.f25537w.length;
        for (int i = 0; i < length; i++) {
            if (dVar.equals(this.f25539x[i])) {
                return this.f25537w[i];
            }
        }
        SampleQueue createWithDrm = SampleQueue.createWithDrm(this.f25522l, this.f25516g, this.f25519j);
        createWithDrm.setUpstreamFormatChangeListener(this);
        int i2 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f25539x, i2);
        dVarArr[length] = dVar;
        this.f25539x = (d[]) Util.castNonNullTypeArray(dVarArr);
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.f25537w, i2);
        sampleQueueArr[length] = createWithDrm;
        this.f25537w = (SampleQueue[]) Util.castNonNullTypeArray(sampleQueueArr);
        return createWithDrm;
    }

    /* renamed from: G */
    public int m19834G(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        if (m19840M()) {
            return -3;
        }
        m19850y(i);
        int read = this.f25537w[i].read(formatHolder, decoderInputBuffer, i2, this.f25508B0);
        if (read == -3) {
            m19851z(i);
        }
        return read;
    }

    /* renamed from: H */
    public void m19835H() {
        if (this.f25543z) {
            for (SampleQueue sampleQueue : this.f25537w) {
                sampleQueue.preRelease();
            }
        }
        this.f25525o.release(this);
        this.f25531t.removeCallbacksAndMessages(null);
        this.f25533u = null;
        this.f25509C0 = true;
    }

    /* renamed from: I */
    public final boolean m19836I(boolean[] zArr, long j) {
        int length = this.f25537w.length;
        for (int i = 0; i < length; i++) {
            if (!this.f25537w[i].seekTo(j, false) && (zArr[i] || !this.f25510J)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public final void m19827w(SeekMap seekMap) {
        this.f25512Q = this.f25535v == null ? seekMap : new SeekMap.Unseekable(C4649C.TIME_UNSET);
        this.f25513Z = seekMap.getDurationUs();
        boolean z = this.f25538w0 == -1 && seekMap.getDurationUs() == C4649C.TIME_UNSET;
        this.f25521k0 = z;
        this.f25528q0 = z ? 7 : 1;
        this.f25520k.onSourceInfoRefreshed(this.f25513Z, seekMap.isSeekable(), this.f25521k0);
        if (this.f25543z) {
            return;
        }
        m19849x();
    }

    /* renamed from: K */
    public int m19838K(int i, long j) {
        if (m19840M()) {
            return 0;
        }
        m19850y(i);
        SampleQueue sampleQueue = this.f25537w[i];
        int skipCount = sampleQueue.getSkipCount(j, this.f25508B0);
        sampleQueue.skip(skipCount);
        if (skipCount == 0) {
            m19851z(i);
        }
        return skipCount;
    }

    /* renamed from: L */
    public final void m19839L() {
        a aVar = new a(this.f25514e, this.f25515f, this.f25526p, this, this.f25527q);
        if (this.f25543z) {
            Assertions.checkState(m19847t());
            long j = this.f25513Z;
            if (j != C4649C.TIME_UNSET && this.f25542y0 > j) {
                this.f25508B0 = true;
                this.f25542y0 = C4649C.TIME_UNSET;
                return;
            }
            aVar.m19859h(((SeekMap) Assertions.checkNotNull(this.f25512Q)).getSeekPoints(this.f25542y0).first.position, this.f25542y0);
            for (SampleQueue sampleQueue : this.f25537w) {
                sampleQueue.setStartTimeUs(this.f25542y0);
            }
            this.f25542y0 = C4649C.TIME_UNSET;
        }
        this.f25507A0 = m19844q();
        this.f25518i.loadStarted(new LoadEventInfo(aVar.f25545a, aVar.f25555k, this.f25525o.startLoading(aVar, this, this.f25517h.getMinimumLoadableRetryCount(this.f25528q0))), 1, -1, null, 0, null, aVar.f25554j, this.f25513Z);
    }

    /* renamed from: M */
    public final boolean m19840M() {
        return this.f25534u0 || m19847t();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.f25508B0 || this.f25525o.hasFatalError() || this.f25544z0) {
            return false;
        }
        if (this.f25543z && this.f25536v0 == 0) {
            return false;
        }
        boolean open = this.f25527q.open();
        if (this.f25525o.isLoading()) {
            return open;
        }
        m19839L();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        m19841m();
        if (m19847t()) {
            return;
        }
        boolean[] zArr = this.f25511O.f25566c;
        int length = this.f25537w.length;
        for (int i = 0; i < length; i++) {
            this.f25537w[i].discardTo(j, z, zArr[i]);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.f25541y = true;
        this.f25531t.post(this.f25529r);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        m19841m();
        if (!this.f25512Q.isSeekable()) {
            return 0L;
        }
        SeekMap.SeekPoints seekPoints = this.f25512Q.getSeekPoints(j);
        return seekParameters.resolveSeekPositionUs(j, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long j;
        m19841m();
        boolean[] zArr = this.f25511O.f25565b;
        if (this.f25508B0) {
            return Long.MIN_VALUE;
        }
        if (m19847t()) {
            return this.f25542y0;
        }
        if (this.f25510J) {
            int length = this.f25537w.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                if (zArr[i] && !this.f25537w[i].isLastSampleQueued()) {
                    j = Math.min(j, this.f25537w[i].getLargestQueuedTimestampUs());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = m19845r();
        }
        return j == Long.MIN_VALUE ? this.f25540x0 : j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (this.f25536v0 == 0) {
            return Long.MIN_VALUE;
        }
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        m19841m();
        return this.f25511O.f25564a;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f25525o.isLoading() && this.f25527q.isOpen();
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    /* renamed from: m */
    public final void m19841m() {
        Assertions.checkState(this.f25543z);
        Assertions.checkNotNull(this.f25511O);
        Assertions.checkNotNull(this.f25512Q);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        m19828A();
        if (this.f25508B0 && !this.f25543z) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    /* renamed from: n */
    public final boolean m19842n(a aVar, int i) {
        SeekMap seekMap;
        if (this.f25538w0 != -1 || ((seekMap = this.f25512Q) != null && seekMap.getDurationUs() != C4649C.TIME_UNSET)) {
            this.f25507A0 = i;
            return true;
        }
        if (this.f25543z && !m19840M()) {
            this.f25544z0 = true;
            return false;
        }
        this.f25534u0 = this.f25543z;
        this.f25540x0 = 0L;
        this.f25507A0 = 0;
        for (SampleQueue sampleQueue : this.f25537w) {
            sampleQueue.reset();
        }
        aVar.m19859h(0L, 0L);
        return true;
    }

    /* renamed from: o */
    public final void m19843o(a aVar) {
        if (this.f25538w0 == -1) {
            this.f25538w0 = aVar.f25556l;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (SampleQueue sampleQueue : this.f25537w) {
            sampleQueue.release();
        }
        this.f25526p.release();
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.f25531t.post(this.f25529r);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.f25533u = callback;
        this.f25527q.open();
        m19839L();
    }

    /* renamed from: q */
    public final int m19844q() {
        int i = 0;
        for (SampleQueue sampleQueue : this.f25537w) {
            i += sampleQueue.getWriteIndex();
        }
        return i;
    }

    /* renamed from: r */
    public final long m19845r() {
        long j = Long.MIN_VALUE;
        for (SampleQueue sampleQueue : this.f25537w) {
            j = Math.max(j, sampleQueue.getLargestQueuedTimestampUs());
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.f25534u0) {
            return C4649C.TIME_UNSET;
        }
        if (!this.f25508B0 && m19844q() <= this.f25507A0) {
            return C4649C.TIME_UNSET;
        }
        this.f25534u0 = false;
        return this.f25540x0;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    /* renamed from: s */
    public TrackOutput m19846s() {
        return m19833F(new d(0, true));
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(final SeekMap seekMap) {
        this.f25531t.post(new Runnable() { // from class: com.sunia.HTREnginev2.q8l
            @Override // java.lang.Runnable
            public final void run() {
                C4858b.this.m19827w(seekMap);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        m19841m();
        boolean[] zArr = this.f25511O.f25565b;
        if (!this.f25512Q.isSeekable()) {
            j = 0;
        }
        int i = 0;
        this.f25534u0 = false;
        this.f25540x0 = j;
        if (m19847t()) {
            this.f25542y0 = j;
            return j;
        }
        if (this.f25528q0 != 7 && m19836I(zArr, j)) {
            return j;
        }
        this.f25544z0 = false;
        this.f25542y0 = j;
        this.f25508B0 = false;
        if (this.f25525o.isLoading()) {
            SampleQueue[] sampleQueueArr = this.f25537w;
            int length = sampleQueueArr.length;
            while (i < length) {
                sampleQueueArr[i].discardToEnd();
                i++;
            }
            this.f25525o.cancelLoading();
        } else {
            this.f25525o.clearFatalError();
            SampleQueue[] sampleQueueArr2 = this.f25537w;
            int length2 = sampleQueueArr2.length;
            while (i < length2) {
                sampleQueueArr2[i].reset();
                i++;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        ExoTrackSelection exoTrackSelection;
        m19841m();
        e eVar = this.f25511O;
        TrackGroupArray trackGroupArray = eVar.f25564a;
        boolean[] zArr3 = eVar.f25566c;
        int i = this.f25536v0;
        int i2 = 0;
        for (int i3 = 0; i3 < exoTrackSelectionArr.length; i3++) {
            SampleStream sampleStream = sampleStreamArr[i3];
            if (sampleStream != null && (exoTrackSelectionArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) sampleStream).f25560e;
                Assertions.checkState(zArr3[i4]);
                this.f25536v0--;
                zArr3[i4] = false;
                sampleStreamArr[i3] = null;
            }
        }
        boolean z = !this.f25532t0 ? j == 0 : i != 0;
        for (int i5 = 0; i5 < exoTrackSelectionArr.length; i5++) {
            if (sampleStreamArr[i5] == null && (exoTrackSelection = exoTrackSelectionArr[i5]) != null) {
                Assertions.checkState(exoTrackSelection.length() == 1);
                Assertions.checkState(exoTrackSelection.getIndexInTrackGroup(0) == 0);
                int indexOf = trackGroupArray.indexOf(exoTrackSelection.getTrackGroup());
                Assertions.checkState(!zArr3[indexOf]);
                this.f25536v0++;
                zArr3[indexOf] = true;
                sampleStreamArr[i5] = new c(indexOf);
                zArr2[i5] = true;
                if (!z) {
                    SampleQueue sampleQueue = this.f25537w[indexOf];
                    z = (sampleQueue.seekTo(j, true) || sampleQueue.getReadIndex() == 0) ? false : true;
                }
            }
        }
        if (this.f25536v0 == 0) {
            this.f25544z0 = false;
            this.f25534u0 = false;
            if (this.f25525o.isLoading()) {
                SampleQueue[] sampleQueueArr = this.f25537w;
                int length = sampleQueueArr.length;
                while (i2 < length) {
                    sampleQueueArr[i2].discardToEnd();
                    i2++;
                }
                this.f25525o.cancelLoading();
            } else {
                SampleQueue[] sampleQueueArr2 = this.f25537w;
                int length2 = sampleQueueArr2.length;
                while (i2 < length2) {
                    sampleQueueArr2[i2].reset();
                    i2++;
                }
            }
        } else if (z) {
            j = seekToUs(j);
            while (i2 < sampleStreamArr.length) {
                if (sampleStreamArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.f25532t0 = true;
        return j;
    }

    /* renamed from: t */
    public final boolean m19847t() {
        return this.f25542y0 != C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return m19833F(new d(i, false));
    }

    /* renamed from: u */
    public boolean m19848u(int i) {
        return !m19840M() && this.f25537w[i].isReady(this.f25508B0);
    }

    /* renamed from: x */
    public final void m19849x() {
        if (this.f25509C0 || this.f25543z || !this.f25541y || this.f25512Q == null) {
            return;
        }
        for (SampleQueue sampleQueue : this.f25537w) {
            if (sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.f25527q.close();
        int length = this.f25537w.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            Format format = (Format) Assertions.checkNotNull(this.f25537w[i].getUpstreamFormat());
            String str = format.sampleMimeType;
            boolean isAudio = MimeTypes.isAudio(str);
            boolean z = isAudio || MimeTypes.isVideo(str);
            zArr[i] = z;
            this.f25510J = z | this.f25510J;
            IcyHeaders icyHeaders = this.f25535v;
            if (icyHeaders != null) {
                if (isAudio || this.f25539x[i].f25563b) {
                    Metadata metadata = format.metadata;
                    format = format.buildUpon().setMetadata(metadata == null ? new Metadata(icyHeaders) : metadata.copyWithAppendedEntries(icyHeaders)).build();
                }
                if (isAudio && format.averageBitrate == -1 && format.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    format = format.buildUpon().setAverageBitrate(icyHeaders.bitrate).build();
                }
            }
            trackGroupArr[i] = new TrackGroup(Integer.toString(i), format.copyWithCryptoType(this.f25516g.getCryptoType(format)));
        }
        this.f25511O = new e(new TrackGroupArray(trackGroupArr), zArr);
        this.f25543z = true;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.f25533u)).onPrepared(this);
    }

    /* renamed from: y */
    public final void m19850y(int i) {
        m19841m();
        e eVar = this.f25511O;
        boolean[] zArr = eVar.f25567d;
        if (zArr[i]) {
            return;
        }
        Format format = eVar.f25564a.get(i).getFormat(0);
        this.f25518i.downstreamFormatChanged(MimeTypes.getTrackType(format.sampleMimeType), format, 0, null, this.f25540x0);
        zArr[i] = true;
    }

    /* renamed from: z */
    public final void m19851z(int i) {
        m19841m();
        boolean[] zArr = this.f25511O.f25565b;
        if (this.f25544z0 && zArr[i]) {
            if (this.f25537w[i].isReady(false)) {
                return;
            }
            this.f25542y0 = 0L;
            this.f25544z0 = false;
            this.f25534u0 = true;
            this.f25540x0 = 0L;
            this.f25507A0 = 0;
            for (SampleQueue sampleQueue : this.f25537w) {
                sampleQueue.reset();
            }
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.f25533u)).onContinueLoadingRequested(this);
        }
    }
}
