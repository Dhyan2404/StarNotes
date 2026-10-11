package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.sunia.HTREnginev2.izh;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {

    /* renamed from: P0 */
    public static final String f25968P0 = "HlsSampleStreamWrapper";

    /* renamed from: Q0 */
    public static final int f25969Q0 = -1;

    /* renamed from: R0 */
    public static final int f25970R0 = -2;

    /* renamed from: S0 */
    public static final int f25971S0 = -3;

    /* renamed from: T0 */
    public static final Set<Integer> f25972T0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));

    /* renamed from: A0 */
    public Set<TrackGroup> f25973A0;

    /* renamed from: B0 */
    public int[] f25974B0;

    /* renamed from: C0 */
    public int f25975C0;

    /* renamed from: D0 */
    public boolean f25976D0;

    /* renamed from: E0 */
    public boolean[] f25977E0;

    /* renamed from: F0 */
    public boolean[] f25978F0;

    /* renamed from: G0 */
    public long f25979G0;

    /* renamed from: H0 */
    public long f25980H0;

    /* renamed from: I0 */
    public boolean f25981I0;

    /* renamed from: J0 */
    public boolean f25983J0;

    /* renamed from: K0 */
    public boolean f25984K0;

    /* renamed from: L0 */
    public boolean f25985L0;

    /* renamed from: M0 */
    public long f25986M0;

    /* renamed from: N0 */
    @Nullable
    public DrmInitData f25987N0;

    /* renamed from: O */
    public Set<Integer> f25988O;

    /* renamed from: O0 */
    @Nullable
    public C4891a f25989O0;

    /* renamed from: Q */
    public SparseIntArray f25990Q;

    /* renamed from: Z */
    public TrackOutput f25991Z;

    /* renamed from: e */
    public final String f25992e;

    /* renamed from: f */
    public final int f25993f;

    /* renamed from: g */
    public final Callback f25994g;

    /* renamed from: h */
    public final HlsChunkSource f25995h;

    /* renamed from: i */
    public final Allocator f25996i;

    /* renamed from: j */
    @Nullable
    public final Format f25997j;

    /* renamed from: k */
    public final DrmSessionManager f25998k;

    /* renamed from: k0 */
    public int f25999k0;

    /* renamed from: l */
    public final DrmSessionEventListener.EventDispatcher f26000l;

    /* renamed from: m */
    public final LoadErrorHandlingPolicy f26001m;

    /* renamed from: o */
    public final MediaSourceEventListener.EventDispatcher f26003o;

    /* renamed from: p */
    public final int f26004p;

    /* renamed from: q0 */
    public int f26006q0;

    /* renamed from: r */
    public final ArrayList<C4891a> f26007r;

    /* renamed from: s */
    public final List<C4891a> f26008s;

    /* renamed from: t */
    public final Runnable f26009t;

    /* renamed from: t0 */
    public boolean f26010t0;

    /* renamed from: u */
    public final Runnable f26011u;

    /* renamed from: u0 */
    public boolean f26012u0;

    /* renamed from: v */
    public final Handler f26013v;

    /* renamed from: v0 */
    public int f26014v0;

    /* renamed from: w */
    public final ArrayList<izh> f26015w;

    /* renamed from: w0 */
    public Format f26016w0;

    /* renamed from: x */
    public final Map<String, DrmInitData> f26017x;

    /* renamed from: x0 */
    @Nullable
    public Format f26018x0;

    /* renamed from: y */
    @Nullable
    public Chunk f26019y;

    /* renamed from: y0 */
    public boolean f26020y0;

    /* renamed from: z */
    public C4885c[] f26021z;

    /* renamed from: z0 */
    public TrackGroupArray f26022z0;

    /* renamed from: n */
    public final Loader f26002n = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: q */
    public final HlsChunkSource.HlsChunkHolder f26005q = new HlsChunkSource.HlsChunkHolder();

    /* renamed from: J */
    public int[] f25982J = new int[0];

    /* loaded from: classes5.dex */
    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(Uri uri);

        void onPrepared();
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper$c */
    /* loaded from: classes5.dex */
    public static final class C4885c extends SampleQueue {

        /* renamed from: J */
        public final Map<String, DrmInitData> f26031J;

        /* renamed from: K */
        @Nullable
        public DrmInitData f26032K;

        @Override // com.google.android.exoplayer2.source.SampleQueue
        public Format getAdjustedUpstreamFormat(Format format) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.f26032K;
            if (drmInitData2 == null) {
                drmInitData2 = format.drmInitData;
            }
            if (drmInitData2 != null && (drmInitData = this.f26031J.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata m20141t = m20141t(format.metadata);
            if (drmInitData2 != format.drmInitData || m20141t != format.metadata) {
                format = format.buildUpon().setDrmInitData(drmInitData2).setMetadata(m20141t).build();
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue, com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
            super.sampleMetadata(j, i, i2, i3, cryptoData);
        }

        @Nullable
        /* renamed from: t */
        public final Metadata m20141t(@Nullable Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i2);
                if ((entry instanceof PrivFrame) && C4891a.f26054C.equals(((PrivFrame) entry).owner)) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i < length) {
                if (i != i2) {
                    entryArr[i < i2 ? i : i - 1] = metadata.get(i);
                }
                i++;
            }
            return new Metadata(entryArr);
        }

        /* renamed from: u */
        public void m20142u(@Nullable DrmInitData drmInitData) {
            this.f26032K = drmInitData;
            invalidateUpstreamFormatAdjustment();
        }

        /* renamed from: v */
        public void m20143v(C4891a c4891a) {
            sourceId(c4891a.f26058a);
        }

        public C4885c(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, Map<String, DrmInitData> map) {
            super(allocator, drmSessionManager, eventDispatcher);
            this.f26031J = map;
        }
    }

    public HlsSampleStreamWrapper(String str, int i, Callback callback, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, Allocator allocator, long j, @Nullable Format format, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, int i2) {
        this.f25992e = str;
        this.f25993f = i;
        this.f25994g = callback;
        this.f25995h = hlsChunkSource;
        this.f26017x = map;
        this.f25996i = allocator;
        this.f25997j = format;
        this.f25998k = drmSessionManager;
        this.f26000l = eventDispatcher;
        this.f26001m = loadErrorHandlingPolicy;
        this.f26003o = eventDispatcher2;
        this.f26004p = i2;
        Set<Integer> set = f25972T0;
        this.f25988O = new HashSet(set.size());
        this.f25990Q = new SparseIntArray(set.size());
        this.f26021z = new C4885c[0];
        this.f25978F0 = new boolean[0];
        this.f25977E0 = new boolean[0];
        ArrayList<C4891a> arrayList = new ArrayList<>();
        this.f26007r = arrayList;
        this.f26008s = Collections.unmodifiableList(arrayList);
        this.f26015w = new ArrayList<>();
        this.f26009t = new Runnable() { // from class: com.sunia.HTREnginev2.kzh
            @Override // java.lang.Runnable
            public final void run() {
                HlsSampleStreamWrapper.this.m20137z();
            }
        };
        this.f26011u = new Runnable() { // from class: com.sunia.HTREnginev2.lzh
            @Override // java.lang.Runnable
            public final void run() {
                HlsSampleStreamWrapper.this.m20104I();
            }
        };
        this.f26013v = Util.createHandlerForCurrentLooper();
        this.f25979G0 = j;
        this.f25980H0 = j;
    }

    /* renamed from: h */
    public static DummyTrackOutput m20091h(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        Log.m21493w(f25968P0, sb.toString());
        return new DummyTrackOutput();
    }

    /* renamed from: k */
    public static Format m20092k(@Nullable Format format, Format format2, boolean z) {
        String codecsCorrespondingToMimeType;
        String str;
        if (format == null) {
            return format2;
        }
        int trackType = MimeTypes.getTrackType(format2.sampleMimeType);
        if (Util.getCodecCountOfType(format.codecs, trackType) == 1) {
            codecsCorrespondingToMimeType = Util.getCodecsOfType(format.codecs, trackType);
            str = MimeTypes.getMediaMimeType(codecsCorrespondingToMimeType);
        } else {
            codecsCorrespondingToMimeType = MimeTypes.getCodecsCorrespondingToMimeType(format.codecs, format2.sampleMimeType);
            str = format2.sampleMimeType;
        }
        Format.Builder codecs = format2.buildUpon().setId(format.f22448id).setLabel(format.label).setLanguage(format.language).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).setAverageBitrate(z ? format.averageBitrate : -1).setPeakBitrate(z ? format.peakBitrate : -1).setCodecs(codecsCorrespondingToMimeType);
        if (trackType == 2) {
            codecs.setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
        }
        if (str != null) {
            codecs.setSampleMimeType(str);
        }
        int i = format.channelCount;
        if (i != -1 && trackType == 1) {
            codecs.setChannelCount(i);
        }
        Metadata metadata = format.metadata;
        if (metadata != null) {
            Metadata metadata2 = format2.metadata;
            if (metadata2 != null) {
                metadata = metadata2.copyWithAppendedEntriesFrom(metadata);
            }
            codecs.setMetadata(metadata);
        }
        return codecs.build();
    }

    /* renamed from: o */
    public static boolean m20093o(Format format, Format format2) {
        String str = format.sampleMimeType;
        String str2 = format2.sampleMimeType;
        int trackType = MimeTypes.getTrackType(str);
        if (trackType != 3) {
            return trackType == MimeTypes.getTrackType(str2);
        }
        if (Util.areEqual(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || format.accessibilityChannel == format2.accessibilityChannel;
        }
        return false;
    }

    /* renamed from: s */
    public static int m20094s(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    /* renamed from: u */
    public static boolean m20095u(Chunk chunk) {
        return chunk instanceof C4891a;
    }

    /* renamed from: A */
    public void m20096A() throws IOException {
        this.f26002n.maybeThrowError();
        this.f25995h.m20062n();
    }

    /* renamed from: B */
    public void m20097B(int i) throws IOException {
        m20096A();
        this.f26021z[i].maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.f26019y = null;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.f26001m.onLoadTaskConcluded(chunk.loadTaskId);
        this.f26003o.loadCanceled(loadEventInfo, chunk.type, this.f25993f, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z) {
            return;
        }
        if (m20133v() || this.f26014v0 == 0) {
            m20108M();
        }
        if (this.f26014v0 > 0) {
            this.f25994g.onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.f26019y = null;
        this.f25995h.m20064p(chunk);
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.f26001m.onLoadTaskConcluded(chunk.loadTaskId);
        this.f26003o.loadCompleted(loadEventInfo, chunk.type, this.f25993f, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (this.f26012u0) {
            this.f25994g.onContinueLoadingRequested(this);
        } else {
            continueLoading(this.f25979G0);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction createRetryAction;
        int i2;
        boolean m20095u = m20095u(chunk);
        if (m20095u && !((C4891a) chunk).m20162h() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i2 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i2 == 404)) {
            return Loader.RETRY;
        }
        long bytesLoaded = chunk.bytesLoaded();
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, bytesLoaded);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(chunk.type, this.f25993f, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, Util.usToMs(chunk.startTimeUs), Util.usToMs(chunk.endTimeUs)), iOException, i);
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = this.f26001m.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.f25995h.m20059k()), loadErrorInfo);
        boolean m20061m = (fallbackSelectionFor == null || fallbackSelectionFor.type != 2) ? false : this.f25995h.m20061m(chunk, fallbackSelectionFor.exclusionDurationMs);
        if (m20061m) {
            if (m20095u && bytesLoaded == 0) {
                ArrayList<C4891a> arrayList = this.f26007r;
                Assertions.checkState(arrayList.remove(arrayList.size() - 1) == chunk);
                if (this.f26007r.isEmpty()) {
                    this.f25980H0 = this.f25979G0;
                } else {
                    ((C4891a) Iterables.getLast(this.f26007r)).m20161f();
                }
            }
            createRetryAction = Loader.DONT_RETRY;
        } else {
            long retryDelayMsFor = this.f26001m.getRetryDelayMsFor(loadErrorInfo);
            createRetryAction = retryDelayMsFor != C4649C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = createRetryAction;
        boolean z = !loadErrorAction.isRetry();
        this.f26003o.loadError(loadEventInfo, chunk.type, this.f25993f, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, iOException, z);
        if (z) {
            this.f26019y = null;
            this.f26001m.onLoadTaskConcluded(chunk.loadTaskId);
        }
        if (m20061m) {
            if (this.f26012u0) {
                this.f25994g.onContinueLoadingRequested(this);
            } else {
                continueLoading(this.f25979G0);
            }
        }
        return loadErrorAction;
    }

    /* renamed from: F */
    public void m20101F() {
        this.f25988O.clear();
    }

    /* renamed from: G */
    public boolean m20102G(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (!this.f25995h.m20063o(uri)) {
            return true;
        }
        long j = (z || (fallbackSelectionFor = this.f26001m.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.f25995h.m20059k()), loadErrorInfo)) == null || fallbackSelectionFor.type != 2) ? -9223372036854775807L : fallbackSelectionFor.exclusionDurationMs;
        return this.f25995h.m20065q(uri, j) && j != C4649C.TIME_UNSET;
    }

    /* renamed from: H */
    public void m20103H() {
        if (this.f26007r.isEmpty()) {
            return;
        }
        C4891a c4891a = (C4891a) Iterables.getLast(this.f26007r);
        int m20054c = this.f25995h.m20054c(c4891a);
        if (m20054c == 1) {
            c4891a.m20167m();
        } else if (m20054c == 2 && !this.f25984K0 && this.f26002n.isLoading()) {
            this.f26002n.cancelLoading();
        }
    }

    /* renamed from: I */
    public final void m20104I() {
        this.f26010t0 = true;
        m20137z();
    }

    /* renamed from: J */
    public void m20105J(TrackGroup[] trackGroupArr, int i, int... iArr) {
        this.f26022z0 = m20125j(trackGroupArr);
        this.f25973A0 = new HashSet();
        for (int i2 : iArr) {
            this.f25973A0.add(this.f26022z0.get(i2));
        }
        this.f25975C0 = i;
        Handler handler = this.f26013v;
        final Callback callback = this.f25994g;
        Objects.requireNonNull(callback);
        handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.jzh
            @Override // java.lang.Runnable
            public final void run() {
                HlsSampleStreamWrapper.Callback.this.onPrepared();
            }
        });
        m20113R();
    }

    /* renamed from: K */
    public int m20106K(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        if (m20133v()) {
            return -3;
        }
        int i3 = 0;
        if (!this.f26007r.isEmpty()) {
            int i4 = 0;
            while (i4 < this.f26007r.size() - 1 && m20128n(this.f26007r.get(i4))) {
                i4++;
            }
            Util.removeRange(this.f26007r, 0, i4);
            C4891a c4891a = this.f26007r.get(0);
            Format format = c4891a.trackFormat;
            if (!format.equals(this.f26018x0)) {
                this.f26003o.downstreamFormatChanged(this.f25993f, format, c4891a.trackSelectionReason, c4891a.trackSelectionData, c4891a.startTimeUs);
            }
            this.f26018x0 = format;
        }
        if (!this.f26007r.isEmpty() && !this.f26007r.get(0).m20162h()) {
            return -3;
        }
        int read = this.f26021z[i].read(formatHolder, decoderInputBuffer, i2, this.f25984K0);
        if (read == -5) {
            Format format2 = (Format) Assertions.checkNotNull(formatHolder.format);
            if (i == this.f26006q0) {
                int peekSourceId = this.f26021z[i].peekSourceId();
                while (i3 < this.f26007r.size() && this.f26007r.get(i3).f26058a != peekSourceId) {
                    i3++;
                }
                format2 = format2.withManifestFormatInfo(i3 < this.f26007r.size() ? this.f26007r.get(i3).trackFormat : (Format) Assertions.checkNotNull(this.f26016w0));
            }
            formatHolder.format = format2;
        }
        return read;
    }

    /* renamed from: L */
    public void m20107L() {
        if (this.f26012u0) {
            for (C4885c c4885c : this.f26021z) {
                c4885c.preRelease();
            }
        }
        this.f26002n.release(this);
        this.f26013v.removeCallbacksAndMessages(null);
        this.f26020y0 = true;
        this.f26015w.clear();
    }

    /* renamed from: M */
    public final void m20108M() {
        for (C4885c c4885c : this.f26021z) {
            c4885c.reset(this.f25981I0);
        }
        this.f25981I0 = false;
    }

    /* renamed from: N */
    public final boolean m20109N(long j) {
        int length = this.f26021z.length;
        for (int i = 0; i < length; i++) {
            if (!this.f26021z[i].seekTo(j, false) && (this.f25978F0[i] || !this.f25976D0)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: O */
    public boolean m20110O(long j, boolean z) {
        this.f25979G0 = j;
        if (m20133v()) {
            this.f25980H0 = j;
            return true;
        }
        if (this.f26010t0 && !z && m20109N(j)) {
            return false;
        }
        this.f25980H0 = j;
        this.f25984K0 = false;
        this.f26007r.clear();
        if (this.f26002n.isLoading()) {
            if (this.f26010t0) {
                for (C4885c c4885c : this.f26021z) {
                    c4885c.discardToEnd();
                }
            }
            this.f26002n.cancelLoading();
        } else {
            this.f26002n.clearFatalError();
            m20108M();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012d  */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20111P(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] r20, boolean[] r21, com.google.android.exoplayer2.source.SampleStream[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.m20111P(com.google.android.exoplayer2.trackselection.ExoTrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    /* renamed from: Q */
    public void m20112Q(@Nullable DrmInitData drmInitData) {
        if (Util.areEqual(this.f25987N0, drmInitData)) {
            return;
        }
        this.f25987N0 = drmInitData;
        int i = 0;
        while (true) {
            C4885c[] c4885cArr = this.f26021z;
            if (i >= c4885cArr.length) {
                return;
            }
            if (this.f25978F0[i]) {
                c4885cArr[i].m20142u(drmInitData);
            }
            i++;
        }
    }

    @RequiresNonNull({"trackGroups", "optionalTrackGroups"})
    /* renamed from: R */
    public final void m20113R() {
        this.f26012u0 = true;
    }

    /* renamed from: S */
    public void m20114S(boolean z) {
        this.f25995h.m20068t(z);
    }

    /* renamed from: T */
    public void m20115T(long j) {
        if (this.f25986M0 != j) {
            this.f25986M0 = j;
            for (C4885c c4885c : this.f26021z) {
                c4885c.setSampleOffsetUs(j);
            }
        }
    }

    /* renamed from: U */
    public int m20116U(int i, long j) {
        if (m20133v()) {
            return 0;
        }
        C4885c c4885c = this.f26021z[i];
        int skipCount = c4885c.getSkipCount(j, this.f25984K0);
        C4891a c4891a = (C4891a) Iterables.getLast(this.f26007r, null);
        if (c4891a != null && !c4891a.m20162h()) {
            skipCount = Math.min(skipCount, c4891a.getFirstSampleIndex(i) - c4885c.getReadIndex());
        }
        c4885c.skip(skipCount);
        return skipCount;
    }

    /* renamed from: V */
    public void m20117V(int i) {
        m20119c();
        Assertions.checkNotNull(this.f25974B0);
        int i2 = this.f25974B0[i];
        Assertions.checkState(this.f25977E0[i2]);
        this.f25977E0[i2] = false;
    }

    /* renamed from: W */
    public final void m20118W(SampleStream[] sampleStreamArr) {
        this.f26015w.clear();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.f26015w.add((izh) sampleStream);
            }
        }
    }

    @EnsuresNonNull({"trackGroups", "optionalTrackGroups"})
    /* renamed from: c */
    public final void m20119c() {
        Assertions.checkState(this.f26012u0);
        Assertions.checkNotNull(this.f26022z0);
        Assertions.checkNotNull(this.f25973A0);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        List<C4891a> list;
        long max;
        if (this.f25984K0 || this.f26002n.isLoading() || this.f26002n.hasFatalError()) {
            return false;
        }
        if (m20133v()) {
            list = Collections.emptyList();
            max = this.f25980H0;
            for (C4885c c4885c : this.f26021z) {
                c4885c.setStartTimeUs(this.f25980H0);
            }
        } else {
            list = this.f26008s;
            C4891a m20129p = m20129p();
            max = m20129p.isLoadCompleted() ? m20129p.endTimeUs : Math.max(this.f25979G0, m20129p.startTimeUs);
        }
        List<C4891a> list2 = list;
        long j2 = max;
        this.f26005q.clear();
        this.f25995h.m20055e(j, j2, list2, this.f26012u0 || !list2.isEmpty(), this.f26005q);
        HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.f26005q;
        boolean z = hlsChunkHolder.endOfStream;
        Chunk chunk = hlsChunkHolder.chunk;
        Uri uri = hlsChunkHolder.playlistUrl;
        if (z) {
            this.f25980H0 = C4649C.TIME_UNSET;
            this.f25984K0 = true;
            return true;
        }
        if (chunk == null) {
            if (uri != null) {
                this.f25994g.onPlaylistRefreshRequired(uri);
            }
            return false;
        }
        if (m20095u(chunk)) {
            m20132t((C4891a) chunk);
        }
        this.f26019y = chunk;
        this.f26003o.loadStarted(new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, this.f26002n.startLoading(chunk, this, this.f26001m.getMinimumLoadableRetryCount(chunk.type))), chunk.type, this.f25993f, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        return true;
    }

    /* renamed from: d */
    public int m20120d(int i) {
        m20119c();
        Assertions.checkNotNull(this.f25974B0);
        int i2 = this.f25974B0[i];
        if (i2 == -1) {
            return this.f25973A0.contains(this.f26022z0.get(i)) ? -3 : -2;
        }
        boolean[] zArr = this.f25977E0;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    public void discardBuffer(long j, boolean z) {
        if (!this.f26010t0 || m20133v()) {
            return;
        }
        int length = this.f26021z.length;
        for (int i = 0; i < length; i++) {
            this.f26021z[i].discardTo(j, z, this.f25977E0[i]);
        }
    }

    @EnsuresNonNull({"trackGroups", "optionalTrackGroups", "trackGroupToSampleQueueIndex"})
    /* renamed from: e */
    public final void m20121e() {
        int i;
        Format format;
        int length = this.f26021z.length;
        int i2 = -2;
        int i3 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            String str = ((Format) Assertions.checkStateNotNull(this.f26021z[i4].getUpstreamFormat())).sampleMimeType;
            i = MimeTypes.isVideo(str) ? 2 : MimeTypes.isAudio(str) ? 1 : MimeTypes.isText(str) ? 3 : -2;
            if (m20094s(i) > m20094s(i2)) {
                i3 = i4;
                i2 = i;
            } else if (i == i2 && i3 != -1) {
                i3 = -1;
            }
            i4++;
        }
        TrackGroup m20058j = this.f25995h.m20058j();
        int i5 = m20058j.length;
        this.f25975C0 = -1;
        this.f25974B0 = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            this.f25974B0[i6] = i6;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        int i7 = 0;
        while (i7 < length) {
            Format format2 = (Format) Assertions.checkStateNotNull(this.f26021z[i7].getUpstreamFormat());
            if (i7 == i3) {
                Format[] formatArr = new Format[i5];
                for (int i8 = 0; i8 < i5; i8++) {
                    Format format3 = m20058j.getFormat(i8);
                    if (i2 == 1 && (format = this.f25997j) != null) {
                        format3 = format3.withManifestFormatInfo(format);
                    }
                    formatArr[i8] = i5 == 1 ? format2.withManifestFormatInfo(format3) : m20092k(format3, format2, true);
                }
                trackGroupArr[i7] = new TrackGroup(this.f25992e, formatArr);
                this.f25975C0 = i7;
            } else {
                Format format4 = (i2 == i && MimeTypes.isAudio(format2.sampleMimeType)) ? this.f25997j : null;
                String str2 = this.f25992e;
                int i9 = i7 < i3 ? i7 : i7 - 1;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 18);
                sb.append(str2);
                sb.append(":muxed:");
                sb.append(i9);
                trackGroupArr[i7] = new TrackGroup(sb.toString(), m20092k(format4, format2, false));
            }
            i7++;
            i = 2;
        }
        this.f26022z0 = m20125j(trackGroupArr);
        Assertions.checkState(this.f25973A0 == null);
        this.f25973A0 = Collections.emptySet();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.f25985L0 = true;
        this.f26013v.post(this.f26011u);
    }

    /* renamed from: f */
    public final boolean m20122f(int i) {
        for (int i2 = i; i2 < this.f26007r.size(); i2++) {
            if (this.f26007r.get(i2).f26061d) {
                return false;
            }
        }
        C4891a c4891a = this.f26007r.get(i);
        for (int i3 = 0; i3 < this.f26021z.length; i3++) {
            if (this.f26021z[i3].getReadIndex() > c4891a.getFirstSampleIndex(i3)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public void m20123g() {
        if (this.f26012u0) {
            return;
        }
        continueLoading(this.f25979G0);
    }

    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return this.f25995h.m20053b(j, seekParameters);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:489)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:492)
        */
    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        /*
            r6 = this;
            boolean r0 = r6.f25984K0
            if (r0 == 0) goto L7
            r0 = -9223372036854775808
            return r0
        L7:
            boolean r0 = r6.m20133v()
            if (r0 == 0) goto L10
            long r0 = r6.f25980H0
            return r0
        L10:
            long r0 = r6.f25979G0
            com.google.android.exoplayer2.source.hls.a r2 = r6.m20129p()
            boolean r3 = r2.isLoadCompleted()
            if (r3 == 0) goto L1d
            goto L36
        L1d:
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.a> r2 = r6.f26007r
            int r2 = r2.size()
            r3 = 1
            if (r2 <= r3) goto L35
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.a> r2 = r6.f26007r
            int r3 = r2.size()
            int r3 = r3 + (-2)
            java.lang.Object r2 = r2.get(r3)
            com.google.android.exoplayer2.source.hls.a r2 = (com.google.android.exoplayer2.source.hls.C4891a) r2
            goto L36
        L35:
            r2 = 0
        L36:
            if (r2 == 0) goto L3e
            long r2 = r2.endTimeUs
            long r0 = java.lang.Math.max(r0, r2)
        L3e:
            boolean r2 = r6.f26010t0
            if (r2 == 0) goto L55
            com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper$c[] r6 = r6.f26021z
            int r2 = r6.length
            r3 = 0
        L46:
            if (r3 >= r2) goto L55
            r4 = r6[r3]
            long r4 = r4.getLargestQueuedTimestampUs()
            long r0 = java.lang.Math.max(r0, r4)
            int r3 = r3 + 1
            goto L46
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.getBufferedPositionUs():long");
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (m20133v()) {
            return this.f25980H0;
        }
        if (this.f25984K0) {
            return Long.MIN_VALUE;
        }
        return m20129p().endTimeUs;
    }

    public TrackGroupArray getTrackGroups() {
        m20119c();
        return this.f26022z0;
    }

    /* renamed from: i */
    public final SampleQueue m20124i(int i, int i2) {
        int length = this.f26021z.length;
        boolean z = true;
        if (i2 != 1 && i2 != 2) {
            z = false;
        }
        C4885c c4885c = new C4885c(this.f25996i, this.f25998k, this.f26000l, this.f26017x);
        c4885c.setStartTimeUs(this.f25979G0);
        if (z) {
            c4885c.m20142u(this.f25987N0);
        }
        c4885c.setSampleOffsetUs(this.f25986M0);
        C4891a c4891a = this.f25989O0;
        if (c4891a != null) {
            c4885c.m20143v(c4891a);
        }
        c4885c.setUpstreamFormatChangeListener(this);
        int i3 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f25982J, i3);
        this.f25982J = copyOf;
        copyOf[length] = i;
        this.f26021z = (C4885c[]) Util.nullSafeArrayAppend(this.f26021z, c4885c);
        boolean[] copyOf2 = Arrays.copyOf(this.f25978F0, i3);
        this.f25978F0 = copyOf2;
        copyOf2[length] = z;
        this.f25976D0 |= z;
        this.f25988O.add(Integer.valueOf(i2));
        this.f25990Q.append(i2, length);
        if (m20094s(i2) > m20094s(this.f25999k0)) {
            this.f26006q0 = length;
            this.f25999k0 = i2;
        }
        this.f25977E0 = Arrays.copyOf(this.f25977E0, i3);
        return c4885c;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f26002n.isLoading();
    }

    /* renamed from: j */
    public final TrackGroupArray m20125j(TrackGroup[] trackGroupArr) {
        for (int i = 0; i < trackGroupArr.length; i++) {
            TrackGroup trackGroup = trackGroupArr[i];
            Format[] formatArr = new Format[trackGroup.length];
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                Format format = trackGroup.getFormat(i2);
                formatArr[i2] = format.copyWithCryptoType(this.f25998k.getCryptoType(format));
            }
            trackGroupArr[i] = new TrackGroup(trackGroup.f25415id, formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    /* renamed from: l */
    public final void m20126l(int i) {
        Assertions.checkState(!this.f26002n.isLoading());
        while (true) {
            if (i >= this.f26007r.size()) {
                i = -1;
                break;
            } else if (m20122f(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        long j = m20129p().endTimeUs;
        C4891a m20127m = m20127m(i);
        if (this.f26007r.isEmpty()) {
            this.f25980H0 = this.f25979G0;
        } else {
            ((C4891a) Iterables.getLast(this.f26007r)).m20161f();
        }
        this.f25984K0 = false;
        this.f26003o.upstreamDiscarded(this.f25999k0, m20127m.startTimeUs, j);
    }

    /* renamed from: m */
    public final C4891a m20127m(int i) {
        C4891a c4891a = this.f26007r.get(i);
        ArrayList<C4891a> arrayList = this.f26007r;
        Util.removeRange(arrayList, i, arrayList.size());
        for (int i2 = 0; i2 < this.f26021z.length; i2++) {
            this.f26021z[i2].discardUpstreamSamples(c4891a.getFirstSampleIndex(i2));
        }
        return c4891a;
    }

    public void maybeThrowPrepareError() throws IOException {
        m20096A();
        if (this.f25984K0 && !this.f26012u0) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    /* renamed from: n */
    public final boolean m20128n(C4891a c4891a) {
        int i = c4891a.f26058a;
        int length = this.f26021z.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f25977E0[i2] && this.f26021z[i2].peekSourceId() == i) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (C4885c c4885c : this.f26021z) {
            c4885c.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.f26013v.post(this.f26009t);
    }

    /* renamed from: p */
    public final C4891a m20129p() {
        return this.f26007r.get(r1.size() - 1);
    }

    @Nullable
    /* renamed from: q */
    public final TrackOutput m20130q(int i, int i2) {
        Assertions.checkArgument(f25972T0.contains(Integer.valueOf(i2)));
        int i3 = this.f25990Q.get(i2, -1);
        if (i3 == -1) {
            return null;
        }
        if (this.f25988O.add(Integer.valueOf(i2))) {
            this.f25982J[i3] = i;
        }
        return this.f25982J[i3] == i ? this.f26021z[i3] : m20091h(i, i2);
    }

    /* renamed from: r */
    public int m20131r() {
        return this.f25975C0;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        if (this.f26002n.hasFatalError() || m20133v()) {
            return;
        }
        if (this.f26002n.isLoading()) {
            Assertions.checkNotNull(this.f26019y);
            if (this.f25995h.m20070v(j, this.f26019y, this.f26008s)) {
                this.f26002n.cancelLoading();
                return;
            }
            return;
        }
        int size = this.f26008s.size();
        while (size > 0 && this.f25995h.m20054c(this.f26008s.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.f26008s.size()) {
            m20126l(size);
        }
        int m20057h = this.f25995h.m20057h(j, this.f26008s);
        if (m20057h < this.f26007r.size()) {
            m20126l(m20057h);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    /* renamed from: t */
    public final void m20132t(C4891a c4891a) {
        this.f25989O0 = c4891a;
        this.f26016w0 = c4891a.trackFormat;
        this.f25980H0 = C4649C.TIME_UNSET;
        this.f26007r.add(c4891a);
        ImmutableList.Builder builder = ImmutableList.builder();
        for (C4885c c4885c : this.f26021z) {
            builder.add((ImmutableList.Builder) Integer.valueOf(c4885c.getWriteIndex()));
        }
        c4891a.m20160e(this, builder.build());
        for (C4885c c4885c2 : this.f26021z) {
            c4885c2.m20143v(c4891a);
            if (c4891a.f26061d) {
                c4885c2.splice();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        TrackOutput trackOutput;
        if (!f25972T0.contains(Integer.valueOf(i2))) {
            int i3 = 0;
            while (true) {
                TrackOutput[] trackOutputArr = this.f26021z;
                if (i3 >= trackOutputArr.length) {
                    trackOutput = null;
                    break;
                }
                if (this.f25982J[i3] == i) {
                    trackOutput = trackOutputArr[i3];
                    break;
                }
                i3++;
            }
        } else {
            trackOutput = m20130q(i, i2);
        }
        if (trackOutput == null) {
            if (this.f25985L0) {
                return m20091h(i, i2);
            }
            trackOutput = m20124i(i, i2);
        }
        if (i2 != 5) {
            return trackOutput;
        }
        if (this.f25991Z == null) {
            this.f25991Z = new C4884b(trackOutput, this.f26004p);
        }
        return this.f25991Z;
    }

    /* renamed from: v */
    public final boolean m20133v() {
        return this.f25980H0 != C4649C.TIME_UNSET;
    }

    /* renamed from: w */
    public boolean m20134w(int i) {
        return !m20133v() && this.f26021z[i].isReady(this.f25984K0);
    }

    /* renamed from: x */
    public boolean m20135x() {
        return this.f25999k0 == 2;
    }

    @EnsuresNonNull({"trackGroupToSampleQueueIndex"})
    @RequiresNonNull({"trackGroups"})
    /* renamed from: y */
    public final void m20136y() {
        int i = this.f26022z0.length;
        int[] iArr = new int[i];
        this.f25974B0 = iArr;
        Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            while (true) {
                C4885c[] c4885cArr = this.f26021z;
                if (i3 >= c4885cArr.length) {
                    break;
                }
                if (m20093o((Format) Assertions.checkStateNotNull(c4885cArr[i3].getUpstreamFormat()), this.f26022z0.get(i2).getFormat(0))) {
                    this.f25974B0[i2] = i3;
                    break;
                }
                i3++;
            }
        }
        Iterator<izh> it2 = this.f26015w.iterator();
        while (it2.hasNext()) {
            it2.next().m54841a();
        }
    }

    /* renamed from: z */
    public final void m20137z() {
        if (!this.f26020y0 && this.f25974B0 == null && this.f26010t0) {
            for (C4885c c4885c : this.f26021z) {
                if (c4885c.getUpstreamFormat() == null) {
                    return;
                }
            }
            if (this.f26022z0 != null) {
                m20136y();
                return;
            }
            m20121e();
            m20113R();
            this.f25994g.onPrepared();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper$b */
    /* loaded from: classes5.dex */
    public static class C4884b implements TrackOutput {

        /* renamed from: g */
        public static final Format f26023g = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_ID3).build();

        /* renamed from: h */
        public static final Format f26024h = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();

        /* renamed from: a */
        public final EventMessageDecoder f26025a = new EventMessageDecoder();

        /* renamed from: b */
        public final TrackOutput f26026b;

        /* renamed from: c */
        public final Format f26027c;

        /* renamed from: d */
        public Format f26028d;

        /* renamed from: e */
        public byte[] f26029e;

        /* renamed from: f */
        public int f26030f;

        public C4884b(TrackOutput trackOutput, int i) {
            this.f26026b = trackOutput;
            if (i == 1) {
                this.f26027c = f26023g;
            } else {
                if (i != 3) {
                    StringBuilder sb = new StringBuilder(33);
                    sb.append("Unknown metadataType: ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
                }
                this.f26027c = f26024h;
            }
            this.f26029e = new byte[0];
            this.f26030f = 0;
        }

        /* renamed from: a */
        public final boolean m20138a(EventMessage eventMessage) {
            Format wrappedMetadataFormat = eventMessage.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && Util.areEqual(this.f26027c.sampleMimeType, wrappedMetadataFormat.sampleMimeType);
        }

        /* renamed from: b */
        public final void m20139b(int i) {
            byte[] bArr = this.f26029e;
            if (bArr.length < i) {
                this.f26029e = Arrays.copyOf(bArr, i + (i / 2));
            }
        }

        /* renamed from: c */
        public final ParsableByteArray m20140c(int i, int i2) {
            int i3 = this.f26030f - i2;
            ParsableByteArray parsableByteArray = new ParsableByteArray(Arrays.copyOfRange(this.f26029e, i3 - i, i3));
            byte[] bArr = this.f26029e;
            System.arraycopy(bArr, i3, bArr, 0, i2);
            this.f26030f = i2;
            return parsableByteArray;
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            this.f26028d = format;
            this.f26026b.format(this.f26027c);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
            m20139b(this.f26030f + i);
            int read = dataReader.read(this.f26029e, this.f26030f, i);
            if (read != -1) {
                this.f26030f += read;
                return read;
            }
            if (z) {
                return -1;
            }
            throw new EOFException();
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
            Assertions.checkNotNull(this.f26028d);
            ParsableByteArray m20140c = m20140c(i2, i3);
            if (!Util.areEqual(this.f26028d.sampleMimeType, this.f26027c.sampleMimeType)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.f26028d.sampleMimeType)) {
                    String valueOf = String.valueOf(this.f26028d.sampleMimeType);
                    Log.m21493w(HlsSampleStreamWrapper.f25968P0, valueOf.length() != 0 ? "Ignoring sample for unsupported format: ".concat(valueOf) : new String("Ignoring sample for unsupported format: "));
                    return;
                } else {
                    EventMessage decode = this.f26025a.decode(m20140c);
                    if (!m20138a(decode)) {
                        Log.m21493w(HlsSampleStreamWrapper.f25968P0, String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f26027c.sampleMimeType, decode.getWrappedMetadataFormat()));
                        return;
                    }
                    m20140c = new ParsableByteArray((byte[]) Assertions.checkNotNull(decode.getWrappedMetadataBytes()));
                }
            }
            int bytesLeft = m20140c.bytesLeft();
            this.f26026b.sampleData(m20140c, bytesLeft);
            this.f26026b.sampleMetadata(j, i, bytesLeft, i3, cryptoData);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
            m20139b(this.f26030f + i);
            parsableByteArray.readBytes(this.f26029e, this.f26030f, i);
            this.f26030f += i;
        }
    }
}
