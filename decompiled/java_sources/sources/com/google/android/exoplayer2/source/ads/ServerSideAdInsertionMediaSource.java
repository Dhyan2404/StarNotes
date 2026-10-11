package com.google.android.exoplayer2.source.ads;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.ForwardingTimeline;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.source.ads.ServerSideAdInsertionMediaSource;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class ServerSideAdInsertionMediaSource extends BaseMediaSource implements MediaSource.MediaSourceCaller, MediaSourceEventListener, DrmSessionEventListener {

    /* renamed from: l */
    public final MediaSource f25473l;

    /* renamed from: p */
    @Nullable
    public final AdPlaybackStateUpdater f25477p;

    /* renamed from: q */
    @Nullable
    @GuardedBy("this")
    public Handler f25478q;

    /* renamed from: r */
    @Nullable
    public C4857d f25479r;

    /* renamed from: s */
    @Nullable
    public Timeline f25480s;

    /* renamed from: m */
    public final ListMultimap<Pair<Long, Object>, C4857d> f25474m = ArrayListMultimap.create();

    /* renamed from: t */
    public ImmutableMap<Object, AdPlaybackState> f25481t = ImmutableMap.m26185of();

    /* renamed from: n */
    public final MediaSourceEventListener.EventDispatcher f25475n = createEventDispatcher(null);

    /* renamed from: o */
    public final DrmSessionEventListener.EventDispatcher f25476o = createDrmEventDispatcher(null);

    /* loaded from: classes5.dex */
    public interface AdPlaybackStateUpdater {
        boolean onAdPlaybackStateUpdateRequested(Timeline timeline);
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.ServerSideAdInsertionMediaSource$a */
    /* loaded from: classes5.dex */
    public static final class C4854a implements MediaPeriod {

        /* renamed from: e */
        public final C4857d f25482e;

        /* renamed from: f */
        public final MediaSource.MediaPeriodId f25483f;

        /* renamed from: g */
        public final MediaSourceEventListener.EventDispatcher f25484g;

        /* renamed from: h */
        public final DrmSessionEventListener.EventDispatcher f25485h;

        /* renamed from: i */
        public MediaPeriod.Callback f25486i;

        /* renamed from: j */
        public long f25487j;

        /* renamed from: k */
        public boolean[] f25488k = new boolean[0];

        public C4854a(C4857d c4857d, MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener.EventDispatcher eventDispatcher2) {
            this.f25482e = c4857d;
            this.f25483f = mediaPeriodId;
            this.f25484g = eventDispatcher;
            this.f25485h = eventDispatcher2;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.f25482e.m19791f(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.f25482e.m19792g(this, j, z);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return this.f25482e.m19794i(this, j, seekParameters);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.f25482e.m19795j(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.f25482e.m19798m(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
            return this.f25482e.m19799n(list);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.f25482e.m19801p();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return this.f25482e.m19802q(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.f25482e.m19807v();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            this.f25486i = callback;
            this.f25482e.m19779A(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            return this.f25482e.m19781C(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.f25482e.m19782D(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            return this.f25482e.m19785G(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            if (this.f25488k.length == 0) {
                this.f25488k = new boolean[sampleStreamArr.length];
            }
            return this.f25482e.m19786H(this, exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.ServerSideAdInsertionMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4855b implements SampleStream {

        /* renamed from: e */
        public final C4854a f25489e;

        /* renamed from: f */
        public final int f25490f;

        public C4855b(C4854a c4854a, int i) {
            this.f25489e = c4854a;
            this.f25490f = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return this.f25489e.f25482e.m19803r(this.f25490f);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.f25489e.f25482e.m19806u(this.f25490f);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            C4854a c4854a = this.f25489e;
            return c4854a.f25482e.m19780B(c4854a, this.f25490f, formatHolder, decoderInputBuffer, i);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            C4854a c4854a = this.f25489e;
            return c4854a.f25482e.m19787I(c4854a, this.f25490f, j);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.ServerSideAdInsertionMediaSource$c */
    /* loaded from: classes5.dex */
    public static final class C4856c extends ForwardingTimeline {

        /* renamed from: h */
        public final ImmutableMap<Object, AdPlaybackState> f25491h;

        public C4856c(Timeline timeline, ImmutableMap<Object, AdPlaybackState> immutableMap) {
            super(timeline);
            Assertions.checkState(timeline.getWindowCount() == 1);
            Timeline.Period period = new Timeline.Period();
            for (int i = 0; i < timeline.getPeriodCount(); i++) {
                timeline.getPeriod(i, period, true);
                Assertions.checkState(immutableMap.containsKey(Assertions.checkNotNull(period.uid)));
            }
            this.f25491h = immutableMap;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            super.getPeriod(i, period, true);
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.f25491h.get(period.uid));
            long j = period.durationUs;
            long mediaPeriodPositionUsForContent = j == C4649C.TIME_UNSET ? adPlaybackState.contentDurationUs : ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(j, -1, adPlaybackState);
            Timeline.Period period2 = new Timeline.Period();
            long j2 = 0;
            for (int i2 = 0; i2 < i + 1; i2++) {
                this.timeline.getPeriod(i2, period2, true);
                AdPlaybackState adPlaybackState2 = (AdPlaybackState) Assertions.checkNotNull(this.f25491h.get(period2.uid));
                if (i2 == 0) {
                    j2 = -ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(-period2.getPositionInWindowUs(), -1, adPlaybackState2);
                }
                if (i2 != i) {
                    j2 += ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(period2.durationUs, -1, adPlaybackState2);
                }
            }
            period.set(period.f22727id, period.uid, period.windowIndex, mediaPeriodPositionUsForContent, j2, adPlaybackState, period.isPlaceholder);
            return period;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            super.getWindow(i, window, j);
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.f25491h.get(Assertions.checkNotNull(getPeriod(window.firstPeriodIndex, new Timeline.Period(), true).uid)));
            long mediaPeriodPositionUsForContent = ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(window.positionInFirstPeriodUs, -1, adPlaybackState);
            long j2 = window.durationUs;
            long j3 = C4649C.TIME_UNSET;
            if (j2 == C4649C.TIME_UNSET) {
                long j4 = adPlaybackState.contentDurationUs;
                if (j4 != C4649C.TIME_UNSET) {
                    window.durationUs = j4 - mediaPeriodPositionUsForContent;
                }
            } else {
                Timeline.Period period = getPeriod(window.lastPeriodIndex, new Timeline.Period());
                long j5 = period.durationUs;
                if (j5 != C4649C.TIME_UNSET) {
                    j3 = period.positionInWindowUs + j5;
                }
                window.durationUs = j3;
            }
            window.positionInFirstPeriodUs = mediaPeriodPositionUsForContent;
            return window;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.ServerSideAdInsertionMediaSource$d */
    /* loaded from: classes5.dex */
    public static final class C4857d implements MediaPeriod.Callback {

        /* renamed from: e */
        public final MediaPeriod f25492e;

        /* renamed from: h */
        public final Object f25495h;

        /* renamed from: i */
        public AdPlaybackState f25496i;

        /* renamed from: j */
        @Nullable
        public C4854a f25497j;

        /* renamed from: k */
        public boolean f25498k;

        /* renamed from: l */
        public boolean f25499l;

        /* renamed from: f */
        public final List<C4854a> f25493f = new ArrayList();

        /* renamed from: g */
        public final Map<Long, Pair<LoadEventInfo, MediaLoadData>> f25494g = new HashMap();

        /* renamed from: m */
        public ExoTrackSelection[] f25500m = new ExoTrackSelection[0];

        /* renamed from: n */
        public SampleStream[] f25501n = new SampleStream[0];

        /* renamed from: o */
        public MediaLoadData[] f25502o = new MediaLoadData[0];

        public C4857d(MediaPeriod mediaPeriod, Object obj, AdPlaybackState adPlaybackState) {
            this.f25492e = mediaPeriod;
            this.f25495h = obj;
            this.f25496i = adPlaybackState;
        }

        /* renamed from: A */
        public void m19779A(C4854a c4854a, long j) {
            c4854a.f25487j = j;
            if (this.f25498k) {
                if (this.f25499l) {
                    ((MediaPeriod.Callback) Assertions.checkNotNull(c4854a.f25486i)).onPrepared(c4854a);
                }
            } else {
                this.f25498k = true;
                this.f25492e.prepare(this, ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i));
            }
        }

        /* renamed from: B */
        public int m19780B(C4854a c4854a, int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            int readData = ((SampleStream) Util.castNonNull(this.f25501n[i])).readData(formatHolder, decoderInputBuffer, i2 | 1 | 4);
            long m19797l = m19797l(c4854a, decoderInputBuffer.timeUs);
            if ((readData == -4 && m19797l == Long.MIN_VALUE) || (readData == -3 && m19795j(c4854a) == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys)) {
                m19805t(c4854a, i);
                decoderInputBuffer.clear();
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if (readData == -4) {
                m19805t(c4854a, i);
                ((SampleStream) Util.castNonNull(this.f25501n[i])).readData(formatHolder, decoderInputBuffer, i2);
                decoderInputBuffer.timeUs = m19797l;
            }
            return readData;
        }

        /* renamed from: C */
        public long m19781C(C4854a c4854a) {
            if (!c4854a.equals(this.f25493f.get(0))) {
                return C4649C.TIME_UNSET;
            }
            long readDiscontinuity = this.f25492e.readDiscontinuity();
            return readDiscontinuity == C4649C.TIME_UNSET ? C4649C.TIME_UNSET : ServerSideAdInsertionUtil.getMediaPeriodPositionUs(readDiscontinuity, c4854a.f25483f, this.f25496i);
        }

        /* renamed from: D */
        public void m19782D(C4854a c4854a, long j) {
            this.f25492e.reevaluateBuffer(m19800o(c4854a, j));
        }

        /* renamed from: E */
        public void m19783E(MediaSource mediaSource) {
            mediaSource.releasePeriod(this.f25492e);
        }

        /* renamed from: F */
        public void m19784F(C4854a c4854a) {
            if (c4854a.equals(this.f25497j)) {
                this.f25497j = null;
                this.f25494g.clear();
            }
            this.f25493f.remove(c4854a);
        }

        /* renamed from: G */
        public long m19785G(C4854a c4854a, long j) {
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(this.f25492e.seekToUs(ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i)), c4854a.f25483f, this.f25496i);
        }

        /* renamed from: H */
        public long m19786H(C4854a c4854a, ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            c4854a.f25487j = j;
            if (!c4854a.equals(this.f25493f.get(0))) {
                for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                    ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
                    boolean z = true;
                    if (exoTrackSelection != null) {
                        if (zArr[i] && sampleStreamArr[i] != null) {
                            z = false;
                        }
                        zArr2[i] = z;
                        if (z) {
                            sampleStreamArr[i] = Util.areEqual(this.f25500m[i], exoTrackSelection) ? new C4855b(c4854a, i) : new EmptySampleStream();
                        }
                    } else {
                        sampleStreamArr[i] = null;
                        zArr2[i] = true;
                    }
                }
                return j;
            }
            this.f25500m = (ExoTrackSelection[]) Arrays.copyOf(exoTrackSelectionArr, exoTrackSelectionArr.length);
            long streamPositionUs = ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i);
            SampleStream[] sampleStreamArr2 = this.f25501n;
            SampleStream[] sampleStreamArr3 = sampleStreamArr2.length == 0 ? new SampleStream[exoTrackSelectionArr.length] : (SampleStream[]) Arrays.copyOf(sampleStreamArr2, sampleStreamArr2.length);
            long selectTracks = this.f25492e.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr3, zArr2, streamPositionUs);
            this.f25501n = (SampleStream[]) Arrays.copyOf(sampleStreamArr3, sampleStreamArr3.length);
            this.f25502o = (MediaLoadData[]) Arrays.copyOf(this.f25502o, sampleStreamArr3.length);
            for (int i2 = 0; i2 < sampleStreamArr3.length; i2++) {
                if (sampleStreamArr3[i2] == null) {
                    sampleStreamArr[i2] = null;
                    this.f25502o[i2] = null;
                } else if (sampleStreamArr[i2] == null || zArr2[i2]) {
                    sampleStreamArr[i2] = new C4855b(c4854a, i2);
                    this.f25502o[i2] = null;
                }
            }
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(selectTracks, c4854a.f25483f, this.f25496i);
        }

        /* renamed from: I */
        public int m19787I(C4854a c4854a, int i, long j) {
            return ((SampleStream) Util.castNonNull(this.f25501n[i])).skipData(ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i));
        }

        /* renamed from: J */
        public void m19788J(AdPlaybackState adPlaybackState) {
            this.f25496i = adPlaybackState;
        }

        /* renamed from: d */
        public void m19789d(C4854a c4854a) {
            this.f25493f.add(c4854a);
        }

        /* renamed from: e */
        public boolean m19790e(MediaSource.MediaPeriodId mediaPeriodId, long j) {
            C4854a c4854a = (C4854a) Iterables.getLast(this.f25493f);
            return ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodId, this.f25496i) == ServerSideAdInsertionUtil.getStreamPositionUs(ServerSideAdInsertionMediaSource.m19772f(c4854a, this.f25496i), c4854a.f25483f, this.f25496i);
        }

        /* renamed from: f */
        public boolean m19791f(C4854a c4854a, long j) {
            C4854a c4854a2 = this.f25497j;
            if (c4854a2 != null && !c4854a.equals(c4854a2)) {
                for (Pair<LoadEventInfo, MediaLoadData> pair : this.f25494g.values()) {
                    c4854a2.f25484g.loadCompleted((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.m19770d(c4854a2, (MediaLoadData) pair.second, this.f25496i));
                    c4854a.f25484g.loadStarted((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.m19770d(c4854a, (MediaLoadData) pair.second, this.f25496i));
                }
            }
            this.f25497j = c4854a;
            return this.f25492e.continueLoading(m19800o(c4854a, j));
        }

        /* renamed from: g */
        public void m19792g(C4854a c4854a, long j, boolean z) {
            this.f25492e.discardBuffer(ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i), z);
        }

        /* renamed from: h */
        public final int m19793h(MediaLoadData mediaLoadData) {
            String str;
            if (mediaLoadData.trackFormat == null) {
                return -1;
            }
            int i = 0;
            loop0: while (true) {
                ExoTrackSelection[] exoTrackSelectionArr = this.f25500m;
                if (i >= exoTrackSelectionArr.length) {
                    return -1;
                }
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
                if (exoTrackSelection != null) {
                    TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                    boolean z = mediaLoadData.trackType == 0 && trackGroup.equals(m19801p().get(0));
                    for (int i2 = 0; i2 < trackGroup.length; i2++) {
                        Format format = trackGroup.getFormat(i2);
                        if (format.equals(mediaLoadData.trackFormat) || (z && (str = format.f22448id) != null && str.equals(mediaLoadData.trackFormat.f22448id))) {
                            break loop0;
                        }
                    }
                }
                i++;
            }
            return i;
        }

        /* renamed from: i */
        public long m19794i(C4854a c4854a, long j, SeekParameters seekParameters) {
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(this.f25492e.getAdjustedSeekPositionUs(ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i), seekParameters), c4854a.f25483f, this.f25496i);
        }

        /* renamed from: j */
        public long m19795j(C4854a c4854a) {
            return m19797l(c4854a, this.f25492e.getBufferedPositionUs());
        }

        @Nullable
        /* renamed from: k */
        public C4854a m19796k(@Nullable MediaLoadData mediaLoadData) {
            if (mediaLoadData == null || mediaLoadData.mediaStartTimeMs == C4649C.TIME_UNSET) {
                return null;
            }
            for (int i = 0; i < this.f25493f.size(); i++) {
                C4854a c4854a = this.f25493f.get(i);
                long mediaPeriodPositionUs = ServerSideAdInsertionUtil.getMediaPeriodPositionUs(Util.msToUs(mediaLoadData.mediaStartTimeMs), c4854a.f25483f, this.f25496i);
                long m19772f = ServerSideAdInsertionMediaSource.m19772f(c4854a, this.f25496i);
                if (mediaPeriodPositionUs >= 0 && mediaPeriodPositionUs < m19772f) {
                    return c4854a;
                }
            }
            return null;
        }

        /* renamed from: l */
        public final long m19797l(C4854a c4854a, long j) {
            if (j == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            long mediaPeriodPositionUs = ServerSideAdInsertionUtil.getMediaPeriodPositionUs(j, c4854a.f25483f, this.f25496i);
            if (mediaPeriodPositionUs >= ServerSideAdInsertionMediaSource.m19772f(c4854a, this.f25496i)) {
                return Long.MIN_VALUE;
            }
            return mediaPeriodPositionUs;
        }

        /* renamed from: m */
        public long m19798m(C4854a c4854a) {
            return m19797l(c4854a, this.f25492e.getNextLoadPositionUs());
        }

        /* renamed from: n */
        public List<StreamKey> m19799n(List<ExoTrackSelection> list) {
            return this.f25492e.getStreamKeys(list);
        }

        /* renamed from: o */
        public final long m19800o(C4854a c4854a, long j) {
            long j2 = c4854a.f25487j;
            return j < j2 ? ServerSideAdInsertionUtil.getStreamPositionUs(j2, c4854a.f25483f, this.f25496i) - (c4854a.f25487j - j) : ServerSideAdInsertionUtil.getStreamPositionUs(j, c4854a.f25483f, this.f25496i);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.f25499l = true;
            for (int i = 0; i < this.f25493f.size(); i++) {
                C4854a c4854a = this.f25493f.get(i);
                MediaPeriod.Callback callback = c4854a.f25486i;
                if (callback != null) {
                    callback.onPrepared(c4854a);
                }
            }
        }

        /* renamed from: p */
        public TrackGroupArray m19801p() {
            return this.f25492e.getTrackGroups();
        }

        /* renamed from: q */
        public boolean m19802q(C4854a c4854a) {
            return c4854a.equals(this.f25497j) && this.f25492e.isLoading();
        }

        /* renamed from: r */
        public boolean m19803r(int i) {
            return ((SampleStream) Util.castNonNull(this.f25501n[i])).isReady();
        }

        /* renamed from: s */
        public boolean m19804s() {
            return this.f25493f.isEmpty();
        }

        /* renamed from: t */
        public final void m19805t(C4854a c4854a, int i) {
            MediaLoadData mediaLoadData;
            boolean[] zArr = c4854a.f25488k;
            if (zArr[i] || (mediaLoadData = this.f25502o[i]) == null) {
                return;
            }
            zArr[i] = true;
            c4854a.f25484g.downstreamFormatChanged(ServerSideAdInsertionMediaSource.m19770d(c4854a, mediaLoadData, this.f25496i));
        }

        /* renamed from: u */
        public void m19806u(int i) throws IOException {
            ((SampleStream) Util.castNonNull(this.f25501n[i])).maybeThrowError();
        }

        /* renamed from: v */
        public void m19807v() throws IOException {
            this.f25492e.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        /* renamed from: w, reason: merged with bridge method [inline-methods] */
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            C4854a c4854a = this.f25497j;
            if (c4854a == null) {
                return;
            }
            ((MediaPeriod.Callback) Assertions.checkNotNull(c4854a.f25486i)).onContinueLoadingRequested(this.f25497j);
        }

        /* renamed from: x */
        public void m19809x(C4854a c4854a, MediaLoadData mediaLoadData) {
            int m19793h = m19793h(mediaLoadData);
            if (m19793h != -1) {
                this.f25502o[m19793h] = mediaLoadData;
                c4854a.f25488k[m19793h] = true;
            }
        }

        /* renamed from: y */
        public void m19810y(LoadEventInfo loadEventInfo) {
            this.f25494g.remove(Long.valueOf(loadEventInfo.loadTaskId));
        }

        /* renamed from: z */
        public void m19811z(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            this.f25494g.put(Long.valueOf(loadEventInfo.loadTaskId), Pair.create(loadEventInfo, mediaLoadData));
        }
    }

    public ServerSideAdInsertionMediaSource(MediaSource mediaSource, @Nullable AdPlaybackStateUpdater adPlaybackStateUpdater) {
        this.f25473l = mediaSource;
        this.f25477p = adPlaybackStateUpdater;
    }

    /* renamed from: d */
    public static MediaLoadData m19770d(C4854a c4854a, MediaLoadData mediaLoadData, AdPlaybackState adPlaybackState) {
        return new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, m19771e(mediaLoadData.mediaStartTimeMs, c4854a, adPlaybackState), m19771e(mediaLoadData.mediaEndTimeMs, c4854a, adPlaybackState));
    }

    /* renamed from: e */
    public static long m19771e(long j, C4854a c4854a, AdPlaybackState adPlaybackState) {
        if (j == C4649C.TIME_UNSET) {
            return C4649C.TIME_UNSET;
        }
        long msToUs = Util.msToUs(j);
        MediaSource.MediaPeriodId mediaPeriodId = c4854a.f25483f;
        return Util.usToMs(mediaPeriodId.isAd() ? ServerSideAdInsertionUtil.getMediaPeriodPositionUsForAd(msToUs, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState) : ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(msToUs, -1, adPlaybackState));
    }

    /* renamed from: f */
    public static long m19772f(C4854a c4854a, AdPlaybackState adPlaybackState) {
        MediaSource.MediaPeriodId mediaPeriodId = c4854a.f25483f;
        if (mediaPeriodId.isAd()) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(mediaPeriodId.adGroupIndex);
            if (adGroup.count == -1) {
                return 0L;
            }
            return adGroup.durationsUs[mediaPeriodId.adIndexInAdGroup];
        }
        int i = mediaPeriodId.nextAdGroupIndex;
        if (i == -1) {
            return Long.MAX_VALUE;
        }
        long j = adPlaybackState.getAdGroup(i).timeUs;
        if (j == Long.MIN_VALUE) {
            return Long.MAX_VALUE;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m19773h(ImmutableMap immutableMap) {
        AdPlaybackState adPlaybackState;
        for (C4857d c4857d : this.f25474m.values()) {
            AdPlaybackState adPlaybackState2 = (AdPlaybackState) immutableMap.get(c4857d.f25495h);
            if (adPlaybackState2 != null) {
                c4857d.m19788J(adPlaybackState2);
            }
        }
        C4857d c4857d2 = this.f25479r;
        if (c4857d2 != null && (adPlaybackState = (AdPlaybackState) immutableMap.get(c4857d2.f25495h)) != null) {
            this.f25479r.m19788J(adPlaybackState);
        }
        this.f25481t = immutableMap;
        if (this.f25480s != null) {
            refreshSourceInfo(new C4856c(this.f25480s, immutableMap));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        C4857d c4857d;
        Pair<Long, Object> pair = new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid);
        C4857d c4857d2 = this.f25479r;
        boolean z = false;
        if (c4857d2 != null) {
            if (c4857d2.f25495h.equals(mediaPeriodId.periodUid)) {
                c4857d = this.f25479r;
                this.f25474m.put(pair, c4857d);
                z = true;
            } else {
                this.f25479r.m19783E(this.f25473l);
                c4857d = null;
            }
            this.f25479r = null;
        } else {
            c4857d = null;
        }
        if (c4857d == null && ((c4857d = (C4857d) Iterables.getLast(this.f25474m.get((ListMultimap<Pair<Long, Object>, C4857d>) pair), null)) == null || !c4857d.m19790e(mediaPeriodId, j))) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(mediaPeriodId.periodUid));
            C4857d c4857d3 = new C4857d(this.f25473l.createPeriod(new MediaSource.MediaPeriodId(mediaPeriodId.periodUid, mediaPeriodId.windowSequenceNumber), allocator, ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodId, adPlaybackState)), mediaPeriodId.periodUid, adPlaybackState);
            this.f25474m.put(pair, c4857d3);
            c4857d = c4857d3;
        }
        C4854a c4854a = new C4854a(c4857d, mediaPeriodId, createEventDispatcher(mediaPeriodId), createDrmEventDispatcher(mediaPeriodId));
        c4857d.m19789d(c4854a);
        if (z && c4857d.f25500m.length > 0) {
            c4854a.seekToUs(j);
        }
        return c4854a;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void disableInternal() {
        m19775i();
        this.f25473l.disable(this);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void enableInternal() {
        this.f25473l.enable(this);
    }

    @Nullable
    /* renamed from: g */
    public final C4854a m19774g(@Nullable MediaSource.MediaPeriodId mediaPeriodId, @Nullable MediaLoadData mediaLoadData, boolean z) {
        if (mediaPeriodId == null) {
            return null;
        }
        List<C4857d> list = this.f25474m.get((ListMultimap<Pair<Long, Object>, C4857d>) new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid));
        if (list.isEmpty()) {
            return null;
        }
        if (z) {
            C4857d c4857d = (C4857d) Iterables.getLast(list);
            return c4857d.f25497j != null ? c4857d.f25497j : (C4854a) Iterables.getLast(c4857d.f25493f);
        }
        for (int i = 0; i < list.size(); i++) {
            C4854a m19796k = list.get(i).m19796k(mediaLoadData);
            if (m19796k != null) {
                return m19796k;
            }
        }
        return (C4854a) list.get(0).f25493f.get(0);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25473l.getMediaItem();
    }

    /* renamed from: i */
    public final void m19775i() {
        C4857d c4857d = this.f25479r;
        if (c4857d != null) {
            c4857d.m19783E(this.f25473l);
            this.f25479r = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f25473l.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onDownstreamFormatChanged(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, false);
        if (m19774g == null) {
            this.f25475n.downstreamFormatChanged(mediaLoadData);
        } else {
            m19774g.f25482e.m19809x(m19774g, mediaLoadData);
            m19774g.f25484g.downstreamFormatChanged(m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))));
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        C4854a m19774g = m19774g(mediaPeriodId, null, false);
        if (m19774g == null) {
            this.f25476o.drmKeysLoaded();
        } else {
            m19774g.f25485h.drmKeysLoaded();
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        C4854a m19774g = m19774g(mediaPeriodId, null, false);
        if (m19774g == null) {
            this.f25476o.drmKeysRemoved();
        } else {
            m19774g.f25485h.drmKeysRemoved();
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        C4854a m19774g = m19774g(mediaPeriodId, null, false);
        if (m19774g == null) {
            this.f25476o.drmKeysRestored();
        } else {
            m19774g.f25485h.drmKeysRestored();
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionAcquired(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i2) {
        C4854a m19774g = m19774g(mediaPeriodId, null, true);
        if (m19774g == null) {
            this.f25476o.drmSessionAcquired(i2);
        } else {
            m19774g.f25485h.drmSessionAcquired(i2);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
        C4854a m19774g = m19774g(mediaPeriodId, null, false);
        if (m19774g == null) {
            this.f25476o.drmSessionManagerError(exc);
        } else {
            m19774g.f25485h.drmSessionManagerError(exc);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionReleased(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        C4854a m19774g = m19774g(mediaPeriodId, null, false);
        if (m19774g == null) {
            this.f25476o.drmSessionReleased();
        } else {
            m19774g.f25485h.drmSessionReleased();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadCanceled(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, true);
        if (m19774g == null) {
            this.f25475n.loadCanceled(loadEventInfo, mediaLoadData);
        } else {
            m19774g.f25482e.m19810y(loadEventInfo);
            m19774g.f25484g.loadCanceled(loadEventInfo, m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadCompleted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, true);
        if (m19774g == null) {
            this.f25475n.loadCompleted(loadEventInfo, mediaLoadData);
        } else {
            m19774g.f25482e.m19810y(loadEventInfo);
            m19774g.f25484g.loadCompleted(loadEventInfo, m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, true);
        if (m19774g == null) {
            this.f25475n.loadError(loadEventInfo, mediaLoadData, iOException, z);
            return;
        }
        if (z) {
            m19774g.f25482e.m19810y(loadEventInfo);
        }
        m19774g.f25484g.loadError(loadEventInfo, m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))), iOException, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadStarted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, true);
        if (m19774g == null) {
            this.f25475n.loadStarted(loadEventInfo, mediaLoadData);
        } else {
            m19774g.f25482e.m19811z(loadEventInfo, mediaLoadData);
            m19774g.f25484g.loadStarted(loadEventInfo, m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
    public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
        this.f25480s = timeline;
        AdPlaybackStateUpdater adPlaybackStateUpdater = this.f25477p;
        if ((adPlaybackStateUpdater == null || !adPlaybackStateUpdater.onAdPlaybackStateUpdateRequested(timeline)) && !this.f25481t.isEmpty()) {
            refreshSourceInfo(new C4856c(timeline, this.f25481t));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        C4854a m19774g = m19774g(mediaPeriodId, mediaLoadData, false);
        if (m19774g == null) {
            this.f25475n.upstreamDiscarded(mediaLoadData);
        } else {
            m19774g.f25484g.upstreamDiscarded(m19770d(m19774g, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.f25481t.get(m19774g.f25483f.periodUid))));
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
        synchronized (this) {
            this.f25478q = createHandlerForCurrentLooper;
        }
        this.f25473l.addEventListener(createHandlerForCurrentLooper, this);
        this.f25473l.addDrmEventListener(createHandlerForCurrentLooper, this);
        this.f25473l.prepareSource(this, transferListener, getPlayerId());
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        C4854a c4854a = (C4854a) mediaPeriod;
        c4854a.f25482e.m19784F(c4854a);
        if (c4854a.f25482e.m19804s()) {
            this.f25474m.remove(new Pair(Long.valueOf(c4854a.f25483f.windowSequenceNumber), c4854a.f25483f.periodUid), c4854a.f25482e);
            if (this.f25474m.isEmpty()) {
                this.f25479r = c4854a.f25482e;
            } else {
                c4854a.f25482e.m19783E(this.f25473l);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        m19775i();
        this.f25480s = null;
        synchronized (this) {
            this.f25478q = null;
        }
        this.f25473l.releaseSource(this);
        this.f25473l.removeEventListener(this);
        this.f25473l.removeDrmEventListener(this);
    }

    public void setAdPlaybackStates(final ImmutableMap<Object, AdPlaybackState> immutableMap) {
        Assertions.checkArgument(!immutableMap.isEmpty());
        Object checkNotNull = Assertions.checkNotNull(immutableMap.values().asList().get(0).adsId);
        UnmodifiableIterator<Map.Entry<Object, AdPlaybackState>> it2 = immutableMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Object, AdPlaybackState> next = it2.next();
            Object key = next.getKey();
            AdPlaybackState value = next.getValue();
            Assertions.checkArgument(Util.areEqual(checkNotNull, value.adsId));
            AdPlaybackState adPlaybackState = this.f25481t.get(key);
            if (adPlaybackState != null) {
                for (int i = value.removedAdGroupCount; i < value.adGroupCount; i++) {
                    AdPlaybackState.AdGroup adGroup = value.getAdGroup(i);
                    Assertions.checkArgument(adGroup.isServerSideInserted);
                    if (i < adPlaybackState.adGroupCount) {
                        Assertions.checkArgument(ServerSideAdInsertionUtil.getAdCountInGroup(value, i) >= ServerSideAdInsertionUtil.getAdCountInGroup(adPlaybackState, i));
                    }
                    if (adGroup.timeUs == Long.MIN_VALUE) {
                        Assertions.checkArgument(ServerSideAdInsertionUtil.getAdCountInGroup(value, i) == 0);
                    }
                }
            }
        }
        synchronized (this) {
            Handler handler = this.f25478q;
            if (handler == null) {
                this.f25481t = immutableMap;
            } else {
                handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.thm
                    @Override // java.lang.Runnable
                    public final void run() {
                        ServerSideAdInsertionMediaSource.this.m19773h(immutableMap);
                    }
                });
            }
        }
    }
}
