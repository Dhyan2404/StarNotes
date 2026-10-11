package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkHolder;
import com.google.android.exoplayer2.source.chunk.ContainerMediaChunk;
import com.google.android.exoplayer2.source.chunk.InitializationChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.SingleSampleMediaChunk;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.PlayerEmsgHandler;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.BaseUrl;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class DefaultDashChunkSource implements DashChunkSource {

    /* renamed from: a */
    public final LoaderErrorThrower f25787a;

    /* renamed from: b */
    public final BaseUrlExclusionList f25788b;

    /* renamed from: c */
    public final int[] f25789c;

    /* renamed from: d */
    public final int f25790d;

    /* renamed from: e */
    public final DataSource f25791e;

    /* renamed from: f */
    public final long f25792f;

    /* renamed from: g */
    public final int f25793g;

    /* renamed from: h */
    @Nullable
    public final PlayerEmsgHandler.PlayerTrackEmsgHandler f25794h;

    /* renamed from: i */
    public ExoTrackSelection f25795i;

    /* renamed from: j */
    public DashManifest f25796j;

    /* renamed from: k */
    public int f25797k;

    /* renamed from: l */
    @Nullable
    public IOException f25798l;

    /* renamed from: m */
    public boolean f25799m;
    protected final RepresentationHolder[] representationHolders;

    /* loaded from: classes5.dex */
    public static final class Factory implements DashChunkSource.Factory {

        /* renamed from: a */
        public final DataSource.Factory f25800a;

        /* renamed from: b */
        public final int f25801b;

        /* renamed from: c */
        public final ChunkExtractor.Factory f25802c;

        public Factory(DataSource.Factory factory) {
            this(factory, 1);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashChunkSource.Factory
        public DashChunkSource createDashChunkSource(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i, int[] iArr, ExoTrackSelection exoTrackSelection, int i2, long j, boolean z, List<Format> list, @Nullable PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, @Nullable TransferListener transferListener, PlayerId playerId) {
            DataSource createDataSource = this.f25800a.createDataSource();
            if (transferListener != null) {
                createDataSource.addTransferListener(transferListener);
            }
            return new DefaultDashChunkSource(this.f25802c, loaderErrorThrower, dashManifest, baseUrlExclusionList, i, iArr, exoTrackSelection, i2, createDataSource, j, this.f25801b, z, list, playerTrackEmsgHandler, playerId);
        }

        public Factory(DataSource.Factory factory, int i) {
            this(BundledChunkExtractor.FACTORY, factory, i);
        }

        public Factory(ChunkExtractor.Factory factory, DataSource.Factory factory2, int i) {
            this.f25802c = factory;
            this.f25800a = factory2;
            this.f25801b = i;
        }
    }

    /* loaded from: classes5.dex */
    public static final class RepresentationHolder {

        /* renamed from: a */
        @Nullable
        public final ChunkExtractor f25803a;

        /* renamed from: b */
        public final long f25804b;

        /* renamed from: c */
        public final long f25805c;
        public final Representation representation;

        @Nullable
        public final DashSegmentIndex segmentIndex;
        public final BaseUrl selectedBaseUrl;

        public RepresentationHolder(long j, Representation representation, BaseUrl baseUrl, @Nullable ChunkExtractor chunkExtractor, long j2, @Nullable DashSegmentIndex dashSegmentIndex) {
            this.f25804b = j;
            this.representation = representation;
            this.selectedBaseUrl = baseUrl;
            this.f25805c = j2;
            this.f25803a = chunkExtractor;
            this.segmentIndex = dashSegmentIndex;
        }

        @CheckResult
        /* renamed from: b */
        public RepresentationHolder m20004b(long j, Representation representation) throws BehindLiveWindowException {
            long segmentNum;
            long segmentNum2;
            DashSegmentIndex index = this.representation.getIndex();
            DashSegmentIndex index2 = representation.getIndex();
            if (index == null) {
                return new RepresentationHolder(j, representation, this.selectedBaseUrl, this.f25803a, this.f25805c, index);
            }
            if (!index.isExplicit()) {
                return new RepresentationHolder(j, representation, this.selectedBaseUrl, this.f25803a, this.f25805c, index2);
            }
            long segmentCount = index.getSegmentCount(j);
            if (segmentCount == 0) {
                return new RepresentationHolder(j, representation, this.selectedBaseUrl, this.f25803a, this.f25805c, index2);
            }
            long firstSegmentNum = index.getFirstSegmentNum();
            long timeUs = index.getTimeUs(firstSegmentNum);
            long j2 = (segmentCount + firstSegmentNum) - 1;
            long timeUs2 = index.getTimeUs(j2) + index.getDurationUs(j2, j);
            long firstSegmentNum2 = index2.getFirstSegmentNum();
            long timeUs3 = index2.getTimeUs(firstSegmentNum2);
            long j3 = this.f25805c;
            if (timeUs2 == timeUs3) {
                segmentNum = j2 + 1;
            } else {
                if (timeUs2 < timeUs3) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs3 < timeUs) {
                    segmentNum2 = j3 - (index2.getSegmentNum(timeUs, j) - firstSegmentNum);
                    return new RepresentationHolder(j, representation, this.selectedBaseUrl, this.f25803a, segmentNum2, index2);
                }
                segmentNum = index.getSegmentNum(timeUs3, j);
            }
            segmentNum2 = j3 + (segmentNum - firstSegmentNum2);
            return new RepresentationHolder(j, representation, this.selectedBaseUrl, this.f25803a, segmentNum2, index2);
        }

        @CheckResult
        /* renamed from: c */
        public RepresentationHolder m20005c(DashSegmentIndex dashSegmentIndex) {
            return new RepresentationHolder(this.f25804b, this.representation, this.selectedBaseUrl, this.f25803a, this.f25805c, dashSegmentIndex);
        }

        @CheckResult
        /* renamed from: d */
        public RepresentationHolder m20006d(BaseUrl baseUrl) {
            return new RepresentationHolder(this.f25804b, this.representation, baseUrl, this.f25803a, this.f25805c, this.segmentIndex);
        }

        public long getFirstAvailableSegmentNum(long j) {
            return this.segmentIndex.getFirstAvailableSegmentNum(this.f25804b, j) + this.f25805c;
        }

        public long getFirstSegmentNum() {
            return this.segmentIndex.getFirstSegmentNum() + this.f25805c;
        }

        public long getLastAvailableSegmentNum(long j) {
            return (getFirstAvailableSegmentNum(j) + this.segmentIndex.getAvailableSegmentCount(this.f25804b, j)) - 1;
        }

        public long getSegmentCount() {
            return this.segmentIndex.getSegmentCount(this.f25804b);
        }

        public long getSegmentEndTimeUs(long j) {
            return getSegmentStartTimeUs(j) + this.segmentIndex.getDurationUs(j - this.f25805c, this.f25804b);
        }

        public long getSegmentNum(long j) {
            return this.segmentIndex.getSegmentNum(j, this.f25804b) + this.f25805c;
        }

        public long getSegmentStartTimeUs(long j) {
            return this.segmentIndex.getTimeUs(j - this.f25805c);
        }

        public RangedUri getSegmentUrl(long j) {
            return this.segmentIndex.getSegmentUrl(j - this.f25805c);
        }

        public boolean isSegmentAvailableAtFullNetworkSpeed(long j, long j2) {
            return this.segmentIndex.isExplicit() || j2 == C4649C.TIME_UNSET || getSegmentEndTimeUs(j) <= j2;
        }
    }

    /* loaded from: classes5.dex */
    public static final class RepresentationSegmentIterator extends BaseMediaChunkIterator {

        /* renamed from: d */
        public final RepresentationHolder f25806d;

        /* renamed from: e */
        public final long f25807e;

        public RepresentationSegmentIterator(RepresentationHolder representationHolder, long j, long j2, long j3) {
            super(j, j2);
            this.f25806d = representationHolder;
            this.f25807e = j3;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            return this.f25806d.getSegmentEndTimeUs(getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.f25806d.getSegmentStartTimeUs(getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            long currentIndex = getCurrentIndex();
            RangedUri segmentUrl = this.f25806d.getSegmentUrl(currentIndex);
            int i = this.f25806d.isSegmentAvailableAtFullNetworkSpeed(currentIndex, this.f25807e) ? 0 : 8;
            RepresentationHolder representationHolder = this.f25806d;
            return DashUtil.buildDataSpec(representationHolder.representation, representationHolder.selectedBaseUrl.url, segmentUrl, i);
        }
    }

    public DefaultDashChunkSource(ChunkExtractor.Factory factory, LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i, int[] iArr, ExoTrackSelection exoTrackSelection, int i2, DataSource dataSource, long j, int i3, boolean z, List<Format> list, @Nullable PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, PlayerId playerId) {
        this.f25787a = loaderErrorThrower;
        this.f25796j = dashManifest;
        this.f25788b = baseUrlExclusionList;
        this.f25789c = iArr;
        this.f25795i = exoTrackSelection;
        this.f25790d = i2;
        this.f25791e = dataSource;
        this.f25797k = i;
        this.f25792f = j;
        this.f25793g = i3;
        this.f25794h = playerTrackEmsgHandler;
        long periodDurationUs = dashManifest.getPeriodDurationUs(i);
        ArrayList<Representation> m20000d = m20000d();
        this.representationHolders = new RepresentationHolder[exoTrackSelection.length()];
        int i4 = 0;
        while (i4 < this.representationHolders.length) {
            Representation representation = m20000d.get(exoTrackSelection.getIndexInTrackGroup(i4));
            BaseUrl selectBaseUrl = baseUrlExclusionList.selectBaseUrl(representation.baseUrls);
            RepresentationHolder[] representationHolderArr = this.representationHolders;
            if (selectBaseUrl == null) {
                selectBaseUrl = representation.baseUrls.get(0);
            }
            int i5 = i4;
            representationHolderArr[i5] = new RepresentationHolder(periodDurationUs, representation, selectBaseUrl, factory.createProgressiveMediaExtractor(i2, representation.format, z, list, playerTrackEmsgHandler, playerId), 0L, representation.getIndex());
            i4 = i5 + 1;
        }
    }

    /* renamed from: a */
    public final LoadErrorHandlingPolicy.FallbackOptions m19997a(ExoTrackSelection exoTrackSelection, List<BaseUrl> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (exoTrackSelection.isBlacklisted(i2, elapsedRealtime)) {
                i++;
            }
        }
        int priorityCount = BaseUrlExclusionList.getPriorityCount(list);
        return new LoadErrorHandlingPolicy.FallbackOptions(priorityCount, priorityCount - this.f25788b.getPriorityCountAfterExclusion(list), length, i);
    }

    /* renamed from: b */
    public final long m19998b(long j, long j2) {
        if (!this.f25796j.dynamic) {
            return C4649C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(m19999c(j), this.representationHolders[0].getSegmentEndTimeUs(this.representationHolders[0].getLastAvailableSegmentNum(j))) - j2);
    }

    /* renamed from: c */
    public final long m19999c(long j) {
        DashManifest dashManifest = this.f25796j;
        long j2 = dashManifest.availabilityStartTimeMs;
        return j2 == C4649C.TIME_UNSET ? C4649C.TIME_UNSET : j - Util.msToUs(j2 + dashManifest.getPeriod(this.f25797k).startMs);
    }

    /* renamed from: d */
    public final ArrayList<Representation> m20000d() {
        List<AdaptationSet> list = this.f25796j.getPeriod(this.f25797k).adaptationSets;
        ArrayList<Representation> arrayList = new ArrayList<>();
        for (int i : this.f25789c) {
            arrayList.addAll(list.get(i).representations);
        }
        return arrayList;
    }

    /* renamed from: e */
    public final long m20001e(RepresentationHolder representationHolder, @Nullable MediaChunk mediaChunk, long j, long j2, long j3) {
        return mediaChunk != null ? mediaChunk.getNextChunkIndex() : Util.constrainValue(representationHolder.getSegmentNum(j), j2, j3);
    }

    /* renamed from: f */
    public final RepresentationHolder m20002f(int i) {
        RepresentationHolder representationHolder = this.representationHolders[i];
        BaseUrl selectBaseUrl = this.f25788b.selectBaseUrl(representationHolder.representation.baseUrls);
        if (selectBaseUrl == null || selectBaseUrl.equals(representationHolder.selectedBaseUrl)) {
            return representationHolder;
        }
        RepresentationHolder m20006d = representationHolder.m20006d(selectBaseUrl);
        this.representationHolders[i] = m20006d;
        return m20006d;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        for (RepresentationHolder representationHolder : this.representationHolders) {
            if (representationHolder.segmentIndex != null) {
                long segmentNum = representationHolder.getSegmentNum(j);
                long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(segmentNum);
                long segmentCount = representationHolder.getSegmentCount();
                return seekParameters.resolveSeekPositionUs(j, segmentStartTimeUs, (segmentStartTimeUs >= j || (segmentCount != -1 && segmentNum >= (representationHolder.getFirstSegmentNum() + segmentCount) - 1)) ? segmentStartTimeUs : representationHolder.getSegmentStartTimeUs(segmentNum + 1));
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void getNextChunk(long j, long j2, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        MediaChunkIterator[] mediaChunkIteratorArr;
        int i;
        int i2;
        long j3;
        long j4;
        boolean z;
        if (this.f25798l != null) {
            return;
        }
        long j5 = j2 - j;
        long msToUs = Util.msToUs(this.f25796j.availabilityStartTimeMs) + Util.msToUs(this.f25796j.getPeriod(this.f25797k).startMs) + j2;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.f25794h;
        if (playerTrackEmsgHandler == null || !playerTrackEmsgHandler.maybeRefreshManifestBeforeLoadingNextChunk(msToUs)) {
            long msToUs2 = Util.msToUs(Util.getNowUnixTimeMs(this.f25792f));
            long m19999c = m19999c(msToUs2);
            boolean z2 = true;
            MediaChunk mediaChunk = list.isEmpty() ? null : list.get(list.size() - 1);
            int length = this.f25795i.length();
            MediaChunkIterator[] mediaChunkIteratorArr2 = new MediaChunkIterator[length];
            int i3 = 0;
            while (i3 < length) {
                RepresentationHolder representationHolder = this.representationHolders[i3];
                if (representationHolder.segmentIndex == null) {
                    mediaChunkIteratorArr2[i3] = MediaChunkIterator.EMPTY;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    i = i3;
                    i2 = length;
                    j3 = j5;
                    j4 = msToUs2;
                } else {
                    long firstAvailableSegmentNum = representationHolder.getFirstAvailableSegmentNum(msToUs2);
                    long lastAvailableSegmentNum = representationHolder.getLastAvailableSegmentNum(msToUs2);
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    i = i3;
                    i2 = length;
                    j3 = j5;
                    j4 = msToUs2;
                    long m20001e = m20001e(representationHolder, mediaChunk, j2, firstAvailableSegmentNum, lastAvailableSegmentNum);
                    if (m20001e < firstAvailableSegmentNum) {
                        mediaChunkIteratorArr[i] = MediaChunkIterator.EMPTY;
                    } else {
                        z = z2;
                        mediaChunkIteratorArr[i] = new RepresentationSegmentIterator(m20002f(i), m20001e, lastAvailableSegmentNum, m19999c);
                        i3 = i + 1;
                        z2 = z;
                        msToUs2 = j4;
                        mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                        length = i2;
                        j5 = j3;
                    }
                }
                z = z2;
                i3 = i + 1;
                z2 = z;
                msToUs2 = j4;
                mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                length = i2;
                j5 = j3;
            }
            long j6 = j5;
            long j7 = msToUs2;
            boolean z3 = z2;
            this.f25795i.updateSelectedTrack(j, j6, m19998b(j7, j), list, mediaChunkIteratorArr2);
            RepresentationHolder m20002f = m20002f(this.f25795i.getSelectedIndex());
            ChunkExtractor chunkExtractor = m20002f.f25803a;
            if (chunkExtractor != null) {
                Representation representation = m20002f.representation;
                RangedUri initializationUri = chunkExtractor.getSampleFormats() == null ? representation.getInitializationUri() : null;
                RangedUri indexUri = m20002f.segmentIndex == null ? representation.getIndexUri() : null;
                if (initializationUri != null || indexUri != null) {
                    chunkHolder.chunk = newInitializationChunk(m20002f, this.f25791e, this.f25795i.getSelectedFormat(), this.f25795i.getSelectionReason(), this.f25795i.getSelectionData(), initializationUri, indexUri);
                    return;
                }
            }
            long j8 = m20002f.f25804b;
            long j9 = C4649C.TIME_UNSET;
            boolean z4 = j8 != C4649C.TIME_UNSET ? z3 : false;
            if (m20002f.getSegmentCount() == 0) {
                chunkHolder.endOfStream = z4;
                return;
            }
            long firstAvailableSegmentNum2 = m20002f.getFirstAvailableSegmentNum(j7);
            long lastAvailableSegmentNum2 = m20002f.getLastAvailableSegmentNum(j7);
            boolean z5 = z4;
            long m20001e2 = m20001e(m20002f, mediaChunk, j2, firstAvailableSegmentNum2, lastAvailableSegmentNum2);
            if (m20001e2 < firstAvailableSegmentNum2) {
                this.f25798l = new BehindLiveWindowException();
                return;
            }
            if (m20001e2 > lastAvailableSegmentNum2 || (this.f25799m && m20001e2 >= lastAvailableSegmentNum2)) {
                chunkHolder.endOfStream = z5;
                return;
            }
            if (z5 && m20002f.getSegmentStartTimeUs(m20001e2) >= j8) {
                chunkHolder.endOfStream = true;
                return;
            }
            int min = (int) Math.min(this.f25793g, (lastAvailableSegmentNum2 - m20001e2) + 1);
            if (j8 != C4649C.TIME_UNSET) {
                while (min > 1 && m20002f.getSegmentStartTimeUs((min + m20001e2) - 1) >= j8) {
                    min--;
                }
            }
            int i4 = min;
            if (list.isEmpty()) {
                j9 = j2;
            }
            chunkHolder.chunk = newMediaChunk(m20002f, this.f25791e, this.f25790d, this.f25795i.getSelectedFormat(), this.f25795i.getSelectionReason(), this.f25795i.getSelectionData(), m20001e2, i4, j9, m19999c);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        return (this.f25798l != null || this.f25795i.length() < 2) ? list.size() : this.f25795i.evaluateQueueSize(j, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f25798l;
        if (iOException != null) {
            throw iOException;
        }
        this.f25787a.maybeThrowError();
    }

    public Chunk newInitializationChunk(RepresentationHolder representationHolder, DataSource dataSource, Format format, int i, @Nullable Object obj, @Nullable RangedUri rangedUri, @Nullable RangedUri rangedUri2) {
        Representation representation = representationHolder.representation;
        if (rangedUri == null || (rangedUri2 = rangedUri.attemptMerge(rangedUri2, representationHolder.selectedBaseUrl.url)) != null) {
            rangedUri = rangedUri2;
        }
        return new InitializationChunk(dataSource, DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, rangedUri, 0), format, i, obj, representationHolder.f25803a);
    }

    public Chunk newMediaChunk(RepresentationHolder representationHolder, DataSource dataSource, int i, Format format, int i2, Object obj, long j, int i3, long j2, long j3) {
        Representation representation = representationHolder.representation;
        long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(j);
        RangedUri segmentUrl = representationHolder.getSegmentUrl(j);
        if (representationHolder.f25803a == null) {
            return new SingleSampleMediaChunk(dataSource, DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j, j3) ? 0 : 8), format, i2, obj, segmentStartTimeUs, representationHolder.getSegmentEndTimeUs(j), j, i, format);
        }
        int i4 = 1;
        int i5 = 1;
        while (i4 < i3) {
            RangedUri attemptMerge = segmentUrl.attemptMerge(representationHolder.getSegmentUrl(i4 + j), representationHolder.selectedBaseUrl.url);
            if (attemptMerge == null) {
                break;
            }
            i5++;
            i4++;
            segmentUrl = attemptMerge;
        }
        long j4 = (i5 + j) - 1;
        long segmentEndTimeUs = representationHolder.getSegmentEndTimeUs(j4);
        long j5 = representationHolder.f25804b;
        return new ContainerMediaChunk(dataSource, DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j4, j3) ? 0 : 8), format, i2, obj, segmentStartTimeUs, segmentEndTimeUs, j2, (j5 == C4649C.TIME_UNSET || j5 > segmentEndTimeUs) ? -9223372036854775807L : j5, j, i5, -representation.presentationTimeOffsetUs, representationHolder.f25803a);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
        ChunkIndex chunkIndex;
        if (chunk instanceof InitializationChunk) {
            int indexOf = this.f25795i.indexOf(((InitializationChunk) chunk).trackFormat);
            RepresentationHolder representationHolder = this.representationHolders[indexOf];
            if (representationHolder.segmentIndex == null && (chunkIndex = representationHolder.f25803a.getChunkIndex()) != null) {
                this.representationHolders[indexOf] = representationHolder.m20005c(new DashWrappingSegmentIndex(chunkIndex, representationHolder.representation.presentationTimeOffsetUs));
            }
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.f25794h;
        if (playerTrackEmsgHandler != null) {
            playerTrackEmsgHandler.onChunkLoadCompleted(chunk);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (!z) {
            return false;
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.f25794h;
        if (playerTrackEmsgHandler != null && playerTrackEmsgHandler.onChunkLoadError(chunk)) {
            return true;
        }
        if (!this.f25796j.dynamic && (chunk instanceof MediaChunk)) {
            IOException iOException = loadErrorInfo.exception;
            if ((iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                RepresentationHolder representationHolder = this.representationHolders[this.f25795i.indexOf(chunk.trackFormat)];
                long segmentCount = representationHolder.getSegmentCount();
                if (segmentCount != -1 && segmentCount != 0) {
                    if (((MediaChunk) chunk).getNextChunkIndex() > (representationHolder.getFirstSegmentNum() + segmentCount) - 1) {
                        this.f25799m = true;
                        return true;
                    }
                }
            }
        }
        RepresentationHolder representationHolder2 = this.representationHolders[this.f25795i.indexOf(chunk.trackFormat)];
        BaseUrl selectBaseUrl = this.f25788b.selectBaseUrl(representationHolder2.representation.baseUrls);
        if (selectBaseUrl != null && !representationHolder2.selectedBaseUrl.equals(selectBaseUrl)) {
            return true;
        }
        LoadErrorHandlingPolicy.FallbackOptions m19997a = m19997a(this.f25795i, representationHolder2.representation.baseUrls);
        if ((!m19997a.isFallbackAvailable(2) && !m19997a.isFallbackAvailable(1)) || (fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(m19997a, loadErrorInfo)) == null || !m19997a.isFallbackAvailable(fallbackSelectionFor.type)) {
            return false;
        }
        int i = fallbackSelectionFor.type;
        if (i == 2) {
            ExoTrackSelection exoTrackSelection = this.f25795i;
            return exoTrackSelection.blacklist(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs);
        }
        if (i != 1) {
            return false;
        }
        this.f25788b.exclude(representationHolder2.selectedBaseUrl, fallbackSelectionFor.exclusionDurationMs);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void release() {
        for (RepresentationHolder representationHolder : this.representationHolders) {
            ChunkExtractor chunkExtractor = representationHolder.f25803a;
            if (chunkExtractor != null) {
                chunkExtractor.release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.f25798l != null) {
            return false;
        }
        return this.f25795i.shouldCancelChunkLoad(j, chunk, list);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashChunkSource
    public void updateManifest(DashManifest dashManifest, int i) {
        try {
            this.f25796j = dashManifest;
            this.f25797k = i;
            long periodDurationUs = dashManifest.getPeriodDurationUs(i);
            ArrayList<Representation> m20000d = m20000d();
            for (int i2 = 0; i2 < this.representationHolders.length; i2++) {
                Representation representation = m20000d.get(this.f25795i.getIndexInTrackGroup(i2));
                RepresentationHolder[] representationHolderArr = this.representationHolders;
                representationHolderArr[i2] = representationHolderArr[i2].m20004b(periodDurationUs, representation);
            }
        } catch (BehindLiveWindowException e) {
            this.f25798l = e;
        }
    }

    @Override // com.google.android.exoplayer2.source.dash.DashChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.f25795i = exoTrackSelection;
    }
}
