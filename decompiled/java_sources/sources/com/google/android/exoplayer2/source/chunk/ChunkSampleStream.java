package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.chunk.ChunkSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public class ChunkSampleStream<T extends ChunkSource> implements SampleStream, SequenceableLoader, Loader.Callback<Chunk>, Loader.ReleaseCallback {

    /* renamed from: J */
    public static final String f25605J = "ChunkSampleStream";

    /* renamed from: e */
    public final int[] f25606e;

    /* renamed from: f */
    public final Format[] f25607f;

    /* renamed from: g */
    public final boolean[] f25608g;

    /* renamed from: h */
    public final T f25609h;

    /* renamed from: i */
    public final SequenceableLoader.Callback<ChunkSampleStream<T>> f25610i;

    /* renamed from: j */
    public final MediaSourceEventListener.EventDispatcher f25611j;

    /* renamed from: k */
    public final LoadErrorHandlingPolicy f25612k;

    /* renamed from: l */
    public final Loader f25613l;

    /* renamed from: m */
    public final ChunkHolder f25614m;

    /* renamed from: n */
    public final ArrayList<BaseMediaChunk> f25615n;

    /* renamed from: o */
    public final List<BaseMediaChunk> f25616o;

    /* renamed from: p */
    public final SampleQueue f25617p;
    public final int primaryTrackType;

    /* renamed from: q */
    public final SampleQueue[] f25618q;

    /* renamed from: r */
    public final BaseMediaChunkOutput f25619r;

    /* renamed from: s */
    @Nullable
    public Chunk f25620s;

    /* renamed from: t */
    public Format f25621t;

    /* renamed from: u */
    @Nullable
    public ReleaseCallback<T> f25622u;

    /* renamed from: v */
    public long f25623v;

    /* renamed from: w */
    public long f25624w;

    /* renamed from: x */
    public int f25625x;

    /* renamed from: y */
    @Nullable
    public BaseMediaChunk f25626y;

    /* renamed from: z */
    public boolean f25627z;

    /* loaded from: classes5.dex */
    public final class EmbeddedSampleStream implements SampleStream {

        /* renamed from: e */
        public final SampleQueue f25628e;

        /* renamed from: f */
        public final int f25629f;

        /* renamed from: g */
        public boolean f25630g;
        public final ChunkSampleStream<T> parent;

        public EmbeddedSampleStream(ChunkSampleStream<T> chunkSampleStream, SampleQueue sampleQueue, int i) {
            this.parent = chunkSampleStream;
            this.f25628e = sampleQueue;
            this.f25629f = i;
        }

        /* renamed from: a */
        public final void m19902a() {
            if (this.f25630g) {
                return;
            }
            ChunkSampleStream.this.f25611j.downstreamFormatChanged(ChunkSampleStream.this.f25606e[this.f25629f], ChunkSampleStream.this.f25607f[this.f25629f], 0, null, ChunkSampleStream.this.f25624w);
            this.f25630g = true;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return !ChunkSampleStream.this.m19897m() && this.f25628e.isReady(ChunkSampleStream.this.f25627z);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            if (ChunkSampleStream.this.m19897m()) {
                return -3;
            }
            if (ChunkSampleStream.this.f25626y != null && ChunkSampleStream.this.f25626y.getFirstSampleIndex(this.f25629f + 1) <= this.f25628e.getReadIndex()) {
                return -3;
            }
            m19902a();
            return this.f25628e.read(formatHolder, decoderInputBuffer, i, ChunkSampleStream.this.f25627z);
        }

        public void release() {
            Assertions.checkState(ChunkSampleStream.this.f25608g[this.f25629f]);
            ChunkSampleStream.this.f25608g[this.f25629f] = false;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            if (ChunkSampleStream.this.m19897m()) {
                return 0;
            }
            int skipCount = this.f25628e.getSkipCount(j, ChunkSampleStream.this.f25627z);
            if (ChunkSampleStream.this.f25626y != null) {
                skipCount = Math.min(skipCount, ChunkSampleStream.this.f25626y.getFirstSampleIndex(this.f25629f + 1) - this.f25628e.getReadIndex());
            }
            this.f25628e.skip(skipCount);
            if (skipCount > 0) {
                m19902a();
            }
            return skipCount;
        }
    }

    /* loaded from: classes5.dex */
    public interface ReleaseCallback<T extends ChunkSource> {
        void onSampleStreamReleased(ChunkSampleStream<T> chunkSampleStream);
    }

    public ChunkSampleStream(int i, @Nullable int[] iArr, @Nullable Format[] formatArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2) {
        this.primaryTrackType = i;
        int i2 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f25606e = iArr;
        this.f25607f = formatArr == null ? new Format[0] : formatArr;
        this.f25609h = t;
        this.f25610i = callback;
        this.f25611j = eventDispatcher2;
        this.f25612k = loadErrorHandlingPolicy;
        this.f25613l = new Loader(f25605J);
        this.f25614m = new ChunkHolder();
        ArrayList<BaseMediaChunk> arrayList = new ArrayList<>();
        this.f25615n = arrayList;
        this.f25616o = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f25618q = new SampleQueue[length];
        this.f25608g = new boolean[length];
        int i3 = length + 1;
        int[] iArr2 = new int[i3];
        SampleQueue[] sampleQueueArr = new SampleQueue[i3];
        SampleQueue createWithDrm = SampleQueue.createWithDrm(allocator, drmSessionManager, eventDispatcher);
        this.f25617p = createWithDrm;
        iArr2[0] = i;
        sampleQueueArr[0] = createWithDrm;
        while (i2 < length) {
            SampleQueue createWithoutDrm = SampleQueue.createWithoutDrm(allocator);
            this.f25618q[i2] = createWithoutDrm;
            int i4 = i2 + 1;
            sampleQueueArr[i4] = createWithoutDrm;
            iArr2[i4] = this.f25606e[i2];
            i2 = i4;
        }
        this.f25619r = new BaseMediaChunkOutput(iArr2, sampleQueueArr);
        this.f25623v = j;
        this.f25624w = j;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        List<BaseMediaChunk> list;
        long j2;
        if (this.f25627z || this.f25613l.isLoading() || this.f25613l.hasFatalError()) {
            return false;
        }
        boolean m19897m = m19897m();
        if (m19897m) {
            list = Collections.emptyList();
            j2 = this.f25623v;
        } else {
            list = this.f25616o;
            j2 = m19894j().endTimeUs;
        }
        this.f25609h.getNextChunk(j, j2, list, this.f25614m);
        ChunkHolder chunkHolder = this.f25614m;
        boolean z = chunkHolder.endOfStream;
        Chunk chunk = chunkHolder.chunk;
        chunkHolder.clear();
        if (z) {
            this.f25623v = C4649C.TIME_UNSET;
            this.f25627z = true;
            return true;
        }
        if (chunk == null) {
            return false;
        }
        this.f25620s = chunk;
        if (m19896l(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
            if (m19897m) {
                long j3 = baseMediaChunk.startTimeUs;
                long j4 = this.f25623v;
                if (j3 != j4) {
                    this.f25617p.setStartTimeUs(j4);
                    for (SampleQueue sampleQueue : this.f25618q) {
                        sampleQueue.setStartTimeUs(this.f25623v);
                    }
                }
                this.f25623v = C4649C.TIME_UNSET;
            }
            baseMediaChunk.init(this.f25619r);
            this.f25615n.add(baseMediaChunk);
        } else if (chunk instanceof InitializationChunk) {
            ((InitializationChunk) chunk).init(this.f25619r);
        }
        this.f25611j.loadStarted(new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, this.f25613l.startLoading(chunk, this, this.f25612k.getMinimumLoadableRetryCount(chunk.type))), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        return true;
    }

    public void discardBuffer(long j, boolean z) {
        if (m19897m()) {
            return;
        }
        int firstIndex = this.f25617p.getFirstIndex();
        this.f25617p.discardTo(j, z, true);
        int firstIndex2 = this.f25617p.getFirstIndex();
        if (firstIndex2 > firstIndex) {
            long firstTimestampUs = this.f25617p.getFirstTimestampUs();
            int i = 0;
            while (true) {
                SampleQueue[] sampleQueueArr = this.f25618q;
                if (i >= sampleQueueArr.length) {
                    break;
                }
                sampleQueueArr[i].discardTo(firstTimestampUs, z, this.f25608g[i]);
                i++;
            }
        }
        m19891g(firstIndex2);
    }

    /* renamed from: g */
    public final void m19891g(int i) {
        int min = Math.min(m19900p(i, 0), this.f25625x);
        if (min > 0) {
            Util.removeRange(this.f25615n, 0, min);
            this.f25625x -= min;
        }
    }

    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return this.f25609h.getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.f25627z) {
            return Long.MIN_VALUE;
        }
        if (m19897m()) {
            return this.f25623v;
        }
        long j = this.f25624w;
        BaseMediaChunk m19894j = m19894j();
        if (!m19894j.isLoadCompleted()) {
            if (this.f25615n.size() > 1) {
                m19894j = this.f25615n.get(r2.size() - 2);
            } else {
                m19894j = null;
            }
        }
        if (m19894j != null) {
            j = Math.max(j, m19894j.endTimeUs);
        }
        return Math.max(j, this.f25617p.getLargestQueuedTimestampUs());
    }

    public T getChunkSource() {
        return this.f25609h;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (m19897m()) {
            return this.f25623v;
        }
        if (this.f25627z) {
            return Long.MIN_VALUE;
        }
        return m19894j().endTimeUs;
    }

    /* renamed from: h */
    public final void m19892h(int i) {
        Assertions.checkState(!this.f25613l.isLoading());
        int size = this.f25615n.size();
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (!m19895k(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        long j = m19894j().endTimeUs;
        BaseMediaChunk m19893i = m19893i(i);
        if (this.f25615n.isEmpty()) {
            this.f25623v = this.f25624w;
        }
        this.f25627z = false;
        this.f25611j.upstreamDiscarded(this.primaryTrackType, m19893i.startTimeUs, j);
    }

    /* renamed from: i */
    public final BaseMediaChunk m19893i(int i) {
        BaseMediaChunk baseMediaChunk = this.f25615n.get(i);
        ArrayList<BaseMediaChunk> arrayList = this.f25615n;
        Util.removeRange(arrayList, i, arrayList.size());
        this.f25625x = Math.max(this.f25625x, this.f25615n.size());
        int i2 = 0;
        this.f25617p.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex(0));
        while (true) {
            SampleQueue[] sampleQueueArr = this.f25618q;
            if (i2 >= sampleQueueArr.length) {
                return baseMediaChunk;
            }
            SampleQueue sampleQueue = sampleQueueArr[i2];
            i2++;
            sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex(i2));
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f25613l.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return !m19897m() && this.f25617p.isReady(this.f25627z);
    }

    /* renamed from: j */
    public final BaseMediaChunk m19894j() {
        return this.f25615n.get(r1.size() - 1);
    }

    /* renamed from: k */
    public final boolean m19895k(int i) {
        int readIndex;
        BaseMediaChunk baseMediaChunk = this.f25615n.get(i);
        if (this.f25617p.getReadIndex() > baseMediaChunk.getFirstSampleIndex(0)) {
            return true;
        }
        int i2 = 0;
        do {
            SampleQueue[] sampleQueueArr = this.f25618q;
            if (i2 >= sampleQueueArr.length) {
                return false;
            }
            readIndex = sampleQueueArr[i2].getReadIndex();
            i2++;
        } while (readIndex <= baseMediaChunk.getFirstSampleIndex(i2));
        return true;
    }

    /* renamed from: l */
    public final boolean m19896l(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    /* renamed from: m */
    public boolean m19897m() {
        return this.f25623v != C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.f25613l.maybeThrowError();
        this.f25617p.maybeThrowError();
        if (this.f25613l.isLoading()) {
            return;
        }
        this.f25609h.maybeThrowError();
    }

    /* renamed from: n */
    public final void m19898n() {
        int m19900p = m19900p(this.f25617p.getReadIndex(), this.f25625x - 1);
        while (true) {
            int i = this.f25625x;
            if (i > m19900p) {
                return;
            }
            this.f25625x = i + 1;
            m19899o(i);
        }
    }

    /* renamed from: o */
    public final void m19899o(int i) {
        BaseMediaChunk baseMediaChunk = this.f25615n.get(i);
        Format format = baseMediaChunk.trackFormat;
        if (!format.equals(this.f25621t)) {
            this.f25611j.downstreamFormatChanged(this.primaryTrackType, format, baseMediaChunk.trackSelectionReason, baseMediaChunk.trackSelectionData, baseMediaChunk.startTimeUs);
        }
        this.f25621t = format;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        this.f25617p.release();
        for (SampleQueue sampleQueue : this.f25618q) {
            sampleQueue.release();
        }
        this.f25609h.release();
        ReleaseCallback<T> releaseCallback = this.f25622u;
        if (releaseCallback != null) {
            releaseCallback.onSampleStreamReleased(this);
        }
    }

    /* renamed from: p */
    public final int m19900p(int i, int i2) {
        do {
            i2++;
            if (i2 >= this.f25615n.size()) {
                return this.f25615n.size() - 1;
            }
        } while (this.f25615n.get(i2).getFirstSampleIndex(0) <= i);
        return i2 - 1;
    }

    /* renamed from: q */
    public final void m19901q() {
        this.f25617p.reset();
        for (SampleQueue sampleQueue : this.f25618q) {
            sampleQueue.reset();
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        if (m19897m()) {
            return -3;
        }
        BaseMediaChunk baseMediaChunk = this.f25626y;
        if (baseMediaChunk != null && baseMediaChunk.getFirstSampleIndex(0) <= this.f25617p.getReadIndex()) {
            return -3;
        }
        m19898n();
        return this.f25617p.read(formatHolder, decoderInputBuffer, i, this.f25627z);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        if (this.f25613l.hasFatalError() || m19897m()) {
            return;
        }
        if (!this.f25613l.isLoading()) {
            int preferredQueueSize = this.f25609h.getPreferredQueueSize(j, this.f25616o);
            if (preferredQueueSize < this.f25615n.size()) {
                m19892h(preferredQueueSize);
                return;
            }
            return;
        }
        Chunk chunk = (Chunk) Assertions.checkNotNull(this.f25620s);
        if (!(m19896l(chunk) && m19895k(this.f25615n.size() - 1)) && this.f25609h.shouldCancelLoad(j, chunk, this.f25616o)) {
            this.f25613l.cancelLoading();
            if (m19896l(chunk)) {
                this.f25626y = (BaseMediaChunk) chunk;
            }
        }
    }

    public void release() {
        release(null);
    }

    public void seekToUs(long j) {
        BaseMediaChunk baseMediaChunk;
        this.f25624w = j;
        if (m19897m()) {
            this.f25623v = j;
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f25615n.size(); i2++) {
            baseMediaChunk = this.f25615n.get(i2);
            long j2 = baseMediaChunk.startTimeUs;
            if (j2 == j && baseMediaChunk.clippedStartTimeUs == C4649C.TIME_UNSET) {
                break;
            } else {
                if (j2 > j) {
                    break;
                }
            }
        }
        baseMediaChunk = null;
        if (baseMediaChunk != null ? this.f25617p.seekTo(baseMediaChunk.getFirstSampleIndex(0)) : this.f25617p.seekTo(j, j < getNextLoadPositionUs())) {
            this.f25625x = m19900p(this.f25617p.getReadIndex(), 0);
            SampleQueue[] sampleQueueArr = this.f25618q;
            int length = sampleQueueArr.length;
            while (i < length) {
                sampleQueueArr[i].seekTo(j, true);
                i++;
            }
            return;
        }
        this.f25623v = j;
        this.f25627z = false;
        this.f25615n.clear();
        this.f25625x = 0;
        if (!this.f25613l.isLoading()) {
            this.f25613l.clearFatalError();
            m19901q();
            return;
        }
        this.f25617p.discardToEnd();
        SampleQueue[] sampleQueueArr2 = this.f25618q;
        int length2 = sampleQueueArr2.length;
        while (i < length2) {
            sampleQueueArr2[i].discardToEnd();
            i++;
        }
        this.f25613l.cancelLoading();
    }

    public ChunkSampleStream<T>.EmbeddedSampleStream selectEmbeddedTrack(long j, int i) {
        for (int i2 = 0; i2 < this.f25618q.length; i2++) {
            if (this.f25606e[i2] == i) {
                Assertions.checkState(!this.f25608g[i2]);
                this.f25608g[i2] = true;
                this.f25618q[i2].seekTo(j, true);
                return new EmbeddedSampleStream(this, this.f25618q[i2], i2);
            }
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        if (m19897m()) {
            return 0;
        }
        int skipCount = this.f25617p.getSkipCount(j, this.f25627z);
        BaseMediaChunk baseMediaChunk = this.f25626y;
        if (baseMediaChunk != null) {
            skipCount = Math.min(skipCount, baseMediaChunk.getFirstSampleIndex(0) - this.f25617p.getReadIndex());
        }
        this.f25617p.skip(skipCount);
        m19898n();
        return skipCount;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.f25620s = null;
        this.f25626y = null;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.f25612k.onLoadTaskConcluded(chunk.loadTaskId);
        this.f25611j.loadCanceled(loadEventInfo, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z) {
            return;
        }
        if (m19897m()) {
            m19901q();
        } else if (m19896l(chunk)) {
            m19893i(this.f25615n.size() - 1);
            if (this.f25615n.isEmpty()) {
                this.f25623v = this.f25624w;
            }
        }
        this.f25610i.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.f25620s = null;
        this.f25609h.onChunkLoadCompleted(chunk);
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.f25612k.onLoadTaskConcluded(chunk.loadTaskId);
        this.f25611j.loadCompleted(loadEventInfo, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        this.f25610i.onContinueLoadingRequested(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f1  */
    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.source.chunk.Chunk r31, long r32, long r34, java.io.IOException r36, int r37) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.chunk.ChunkSampleStream.onLoadError(com.google.android.exoplayer2.source.chunk.Chunk, long, long, java.io.IOException, int):com.google.android.exoplayer2.upstream.Loader$LoadErrorAction");
    }

    public void release(@Nullable ReleaseCallback<T> releaseCallback) {
        this.f25622u = releaseCallback;
        this.f25617p.preRelease();
        for (SampleQueue sampleQueue : this.f25618q) {
            sampleQueue.preRelease();
        }
        this.f25613l.release(this);
    }
}
