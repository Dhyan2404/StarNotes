package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.DataChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public class HlsChunkSource {

    /* renamed from: t */
    public static final int f25887t = 0;

    /* renamed from: u */
    public static final int f25888u = 1;

    /* renamed from: v */
    public static final int f25889v = 2;

    /* renamed from: w */
    public static final int f25890w = 4;

    /* renamed from: a */
    public final HlsExtractorFactory f25891a;

    /* renamed from: b */
    public final DataSource f25892b;

    /* renamed from: c */
    public final DataSource f25893c;

    /* renamed from: d */
    public final TimestampAdjusterProvider f25894d;

    /* renamed from: e */
    public final Uri[] f25895e;

    /* renamed from: f */
    public final Format[] f25896f;

    /* renamed from: g */
    public final HlsPlaylistTracker f25897g;

    /* renamed from: h */
    public final TrackGroup f25898h;

    /* renamed from: i */
    @Nullable
    public final List<Format> f25899i;

    /* renamed from: k */
    public final PlayerId f25901k;

    /* renamed from: l */
    public boolean f25902l;

    /* renamed from: n */
    @Nullable
    public IOException f25904n;

    /* renamed from: o */
    @Nullable
    public Uri f25905o;

    /* renamed from: p */
    public boolean f25906p;

    /* renamed from: q */
    public ExoTrackSelection f25907q;

    /* renamed from: s */
    public boolean f25909s;

    /* renamed from: j */
    public final FullSegmentEncryptionKeyCache f25900j = new FullSegmentEncryptionKeyCache(4);

    /* renamed from: m */
    public byte[] f25903m = Util.EMPTY_BYTE_ARRAY;

    /* renamed from: r */
    public long f25908r = C4649C.TIME_UNSET;

    /* loaded from: classes5.dex */
    public static final class HlsChunkHolder {

        @Nullable
        public Chunk chunk;
        public boolean endOfStream;

        @Nullable
        public Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsChunkSource$a */
    /* loaded from: classes5.dex */
    public static final class C4878a extends DataChunk {

        /* renamed from: d */
        public byte[] f25910d;

        public C4878a(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
        }

        @Nullable
        /* renamed from: b */
        public byte[] m20072b() {
            return this.f25910d;
        }

        @Override // com.google.android.exoplayer2.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) {
            this.f25910d = Arrays.copyOf(bArr, i);
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.android.exoplayer2.source.hls.HlsChunkSource$b */
    /* loaded from: classes5.dex */
    public static final class C4879b extends BaseMediaChunkIterator {

        /* renamed from: d */
        public final List<HlsMediaPlaylist.SegmentBase> f25911d;

        /* renamed from: e */
        public final long f25912e;

        /* renamed from: f */
        public final String f25913f;

        public C4879b(String str, long j, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.f25913f = str;
            this.f25912e = j;
            this.f25911d = list;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.f25911d.get((int) getCurrentIndex());
            return this.f25912e + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.f25912e + this.f25911d.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.f25911d.get((int) getCurrentIndex());
            return new DataSpec(UriUtil.resolveToUri(this.f25913f, segmentBase.url), segmentBase.byteRangeOffset, segmentBase.byteRangeLength);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsChunkSource$c */
    /* loaded from: classes5.dex */
    public static final class C4880c extends BaseTrackSelection {

        /* renamed from: e */
        public int f25914e;

        public C4880c(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f25914e = indexOf(trackGroup.getFormat(iArr[0]));
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.f25914e;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (isBlacklisted(this.f25914e, elapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isBlacklisted(i, elapsedRealtime)) {
                        this.f25914e = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsChunkSource$d */
    /* loaded from: classes5.dex */
    public static final class C4881d {

        /* renamed from: a */
        public final HlsMediaPlaylist.SegmentBase f25915a;

        /* renamed from: b */
        public final long f25916b;

        /* renamed from: c */
        public final int f25917c;

        /* renamed from: d */
        public final boolean f25918d;

        public C4881d(HlsMediaPlaylist.SegmentBase segmentBase, long j, int i) {
            this.f25915a = segmentBase;
            this.f25916b = j;
            this.f25917c = i;
            this.f25918d = (segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).isPreload;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, @Nullable List<Format> list, PlayerId playerId) {
        this.f25891a = hlsExtractorFactory;
        this.f25897g = hlsPlaylistTracker;
        this.f25895e = uriArr;
        this.f25896f = formatArr;
        this.f25894d = timestampAdjusterProvider;
        this.f25899i = list;
        this.f25901k = playerId;
        DataSource createDataSource = hlsDataSourceFactory.createDataSource(1);
        this.f25892b = createDataSource;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        this.f25893c = hlsDataSourceFactory.createDataSource(3);
        this.f25898h = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < uriArr.length; i++) {
            if ((formatArr[i].roleFlags & 16384) == 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        this.f25907q = new C4880c(this.f25898h, Ints.toArray(arrayList));
    }

    @Nullable
    /* renamed from: d */
    public static Uri m20049d(HlsMediaPlaylist hlsMediaPlaylist, @Nullable HlsMediaPlaylist.SegmentBase segmentBase) {
        String str;
        if (segmentBase == null || (str = segmentBase.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
    }

    @Nullable
    /* renamed from: g */
    public static C4881d m20050g(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 == hlsMediaPlaylist.segments.size()) {
            if (i == -1) {
                i = 0;
            }
            if (i < hlsMediaPlaylist.trailingParts.size()) {
                return new C4881d(hlsMediaPlaylist.trailingParts.get(i), j, i);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
        if (i == -1) {
            return new C4881d(segment, j, -1);
        }
        if (i < segment.parts.size()) {
            return new C4881d(segment.parts.get(i), j, i);
        }
        int i3 = i2 + 1;
        if (i3 < hlsMediaPlaylist.segments.size()) {
            return new C4881d(hlsMediaPlaylist.segments.get(i3), j + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new C4881d(hlsMediaPlaylist.trailingParts.get(0), j + 1, 0);
    }

    @VisibleForTesting
    /* renamed from: i */
    public static List<HlsMediaPlaylist.SegmentBase> m20051i(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 < 0 || hlsMediaPlaylist.segments.size() < i2) {
            return ImmutableList.m26161of();
        }
        ArrayList arrayList = new ArrayList();
        if (i2 < hlsMediaPlaylist.segments.size()) {
            if (i != -1) {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
                if (i == 0) {
                    arrayList.add(segment);
                } else if (i < segment.parts.size()) {
                    List<HlsMediaPlaylist.Part> list = segment.parts;
                    arrayList.addAll(list.subList(i, list.size()));
                }
                i2++;
            }
            List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
            arrayList.addAll(list2.subList(i2, list2.size()));
            i = 0;
        }
        if (hlsMediaPlaylist.partTargetDurationUs != C4649C.TIME_UNSET) {
            int i3 = i != -1 ? i : 0;
            if (i3 < hlsMediaPlaylist.trailingParts.size()) {
                List<HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                arrayList.addAll(list3.subList(i3, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public MediaChunkIterator[] m20052a(@Nullable C4891a c4891a, long j) {
        int i;
        int indexOf = c4891a == null ? -1 : this.f25898h.indexOf(c4891a.trackFormat);
        int length = this.f25907q.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            int indexInTrackGroup = this.f25907q.getIndexInTrackGroup(i2);
            Uri uri = this.f25895e[indexInTrackGroup];
            if (this.f25897g.isSnapshotValid(uri)) {
                HlsMediaPlaylist playlistSnapshot = this.f25897g.getPlaylistSnapshot(uri, z);
                Assertions.checkNotNull(playlistSnapshot);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.f25897g.getInitialStartTimeUs();
                i = i2;
                Pair<Long, Integer> m20056f = m20056f(c4891a, indexInTrackGroup != indexOf ? true : z, playlistSnapshot, initialStartTimeUs, j);
                mediaChunkIteratorArr[i] = new C4879b(playlistSnapshot.baseUri, initialStartTimeUs, m20051i(playlistSnapshot, ((Long) m20056f.first).longValue(), ((Integer) m20056f.second).intValue()));
            } else {
                mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
                i = i2;
            }
            i2 = i + 1;
            z = false;
        }
        return mediaChunkIteratorArr;
    }

    /* renamed from: b */
    public long m20053b(long j, SeekParameters seekParameters) {
        int selectedIndex = this.f25907q.getSelectedIndex();
        Uri[] uriArr = this.f25895e;
        HlsMediaPlaylist playlistSnapshot = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.f25897g.getPlaylistSnapshot(uriArr[this.f25907q.getSelectedIndexInTrackGroup()], true);
        if (playlistSnapshot == null || playlistSnapshot.segments.isEmpty() || !playlistSnapshot.hasIndependentSegments) {
            return j;
        }
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.f25897g.getInitialStartTimeUs();
        long j2 = j - initialStartTimeUs;
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) playlistSnapshot.segments, Long.valueOf(j2), true, true);
        long j3 = playlistSnapshot.segments.get(binarySearchFloor).relativeStartTimeUs;
        return seekParameters.resolveSeekPositionUs(j2, j3, binarySearchFloor != playlistSnapshot.segments.size() - 1 ? playlistSnapshot.segments.get(binarySearchFloor + 1).relativeStartTimeUs : j3) + initialStartTimeUs;
    }

    /* renamed from: c */
    public int m20054c(C4891a c4891a) {
        if (c4891a.f26062e == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) Assertions.checkNotNull(this.f25897g.getPlaylistSnapshot(this.f25895e[this.f25898h.indexOf(c4891a.trackFormat)], false));
        int i = (int) (c4891a.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i < 0) {
            return 1;
        }
        List<HlsMediaPlaylist.Part> list = i < hlsMediaPlaylist.segments.size() ? hlsMediaPlaylist.segments.get(i).parts : hlsMediaPlaylist.trailingParts;
        if (c4891a.f26062e >= list.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = list.get(c4891a.f26062e);
        if (part.isPreload) {
            return 0;
        }
        return Util.areEqual(Uri.parse(UriUtil.resolve(hlsMediaPlaylist.baseUri, part.url)), c4891a.dataSpec.uri) ? 1 : 2;
    }

    /* renamed from: e */
    public void m20055e(long j, long j2, List<C4891a> list, boolean z, HlsChunkHolder hlsChunkHolder) {
        HlsMediaPlaylist hlsMediaPlaylist;
        long j3;
        Uri uri;
        int i;
        C4891a c4891a = list.isEmpty() ? null : (C4891a) Iterables.getLast(list);
        int indexOf = c4891a == null ? -1 : this.f25898h.indexOf(c4891a.trackFormat);
        long j4 = j2 - j;
        long m20067s = m20067s(j);
        if (c4891a != null && !this.f25906p) {
            long durationUs = c4891a.getDurationUs();
            j4 = Math.max(0L, j4 - durationUs);
            if (m20067s != C4649C.TIME_UNSET) {
                m20067s = Math.max(0L, m20067s - durationUs);
            }
        }
        this.f25907q.updateSelectedTrack(j, j4, m20067s, list, m20052a(c4891a, j2));
        int selectedIndexInTrackGroup = this.f25907q.getSelectedIndexInTrackGroup();
        boolean z2 = indexOf != selectedIndexInTrackGroup;
        Uri uri2 = this.f25895e[selectedIndexInTrackGroup];
        if (!this.f25897g.isSnapshotValid(uri2)) {
            hlsChunkHolder.playlistUrl = uri2;
            this.f25909s &= uri2.equals(this.f25905o);
            this.f25905o = uri2;
            return;
        }
        HlsMediaPlaylist playlistSnapshot = this.f25897g.getPlaylistSnapshot(uri2, true);
        Assertions.checkNotNull(playlistSnapshot);
        this.f25906p = playlistSnapshot.hasIndependentSegments;
        m20071w(playlistSnapshot);
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.f25897g.getInitialStartTimeUs();
        Pair<Long, Integer> m20056f = m20056f(c4891a, z2, playlistSnapshot, initialStartTimeUs, j2);
        long longValue = ((Long) m20056f.first).longValue();
        int intValue = ((Integer) m20056f.second).intValue();
        if (longValue >= playlistSnapshot.mediaSequence || c4891a == null || !z2) {
            hlsMediaPlaylist = playlistSnapshot;
            j3 = initialStartTimeUs;
            uri = uri2;
            i = selectedIndexInTrackGroup;
        } else {
            Uri uri3 = this.f25895e[indexOf];
            HlsMediaPlaylist playlistSnapshot2 = this.f25897g.getPlaylistSnapshot(uri3, true);
            Assertions.checkNotNull(playlistSnapshot2);
            j3 = playlistSnapshot2.startTimeUs - this.f25897g.getInitialStartTimeUs();
            Pair<Long, Integer> m20056f2 = m20056f(c4891a, false, playlistSnapshot2, j3, j2);
            longValue = ((Long) m20056f2.first).longValue();
            intValue = ((Integer) m20056f2.second).intValue();
            i = indexOf;
            uri = uri3;
            hlsMediaPlaylist = playlistSnapshot2;
        }
        if (longValue < hlsMediaPlaylist.mediaSequence) {
            this.f25904n = new BehindLiveWindowException();
            return;
        }
        C4881d m20050g = m20050g(hlsMediaPlaylist, longValue, intValue);
        if (m20050g == null) {
            if (!hlsMediaPlaylist.hasEndTag) {
                hlsChunkHolder.playlistUrl = uri;
                this.f25909s &= uri.equals(this.f25905o);
                this.f25905o = uri;
                return;
            } else {
                if (z || hlsMediaPlaylist.segments.isEmpty()) {
                    hlsChunkHolder.endOfStream = true;
                    return;
                }
                m20050g = new C4881d((HlsMediaPlaylist.SegmentBase) Iterables.getLast(hlsMediaPlaylist.segments), (hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()) - 1, -1);
            }
        }
        this.f25909s = false;
        this.f25905o = null;
        Uri m20049d = m20049d(hlsMediaPlaylist, m20050g.f25915a.initializationSegment);
        Chunk m20060l = m20060l(m20049d, i);
        hlsChunkHolder.chunk = m20060l;
        if (m20060l != null) {
            return;
        }
        Uri m20049d2 = m20049d(hlsMediaPlaylist, m20050g.f25915a);
        Chunk m20060l2 = m20060l(m20049d2, i);
        hlsChunkHolder.chunk = m20060l2;
        if (m20060l2 != null) {
            return;
        }
        boolean m20158n = C4891a.m20158n(c4891a, uri, hlsMediaPlaylist, m20050g, j3);
        if (m20158n && m20050g.f25918d) {
            return;
        }
        hlsChunkHolder.chunk = C4891a.m20155b(this.f25891a, this.f25892b, this.f25896f[i], j3, hlsMediaPlaylist, m20050g, uri, this.f25899i, this.f25907q.getSelectionReason(), this.f25907q.getSelectionData(), this.f25902l, this.f25894d, c4891a, this.f25900j.m20046b(m20049d2), this.f25900j.m20046b(m20049d), m20158n, this.f25901k);
    }

    /* renamed from: f */
    public final Pair<Long, Integer> m20056f(@Nullable C4891a c4891a, boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j, long j2) {
        if (c4891a != null && !z) {
            if (!c4891a.isLoadCompleted()) {
                return new Pair<>(Long.valueOf(c4891a.chunkIndex), Integer.valueOf(c4891a.f26062e));
            }
            Long valueOf = Long.valueOf(c4891a.f26062e == -1 ? c4891a.getNextChunkIndex() : c4891a.chunkIndex);
            int i = c4891a.f26062e;
            return new Pair<>(valueOf, Integer.valueOf(i != -1 ? i + 1 : -1));
        }
        long j3 = hlsMediaPlaylist.durationUs + j;
        if (c4891a != null && !this.f25906p) {
            j2 = c4891a.startTimeUs;
        }
        if (!hlsMediaPlaylist.hasEndTag && j2 >= j3) {
            return new Pair<>(Long.valueOf(hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()), -1);
        }
        long j4 = j2 - j;
        int i2 = 0;
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j4), true, !this.f25897g.isLive() || c4891a == null);
        long j5 = binarySearchFloor + hlsMediaPlaylist.mediaSequence;
        if (binarySearchFloor >= 0) {
            HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(binarySearchFloor);
            List<HlsMediaPlaylist.Part> list = j4 < segment.relativeStartTimeUs + segment.durationUs ? segment.parts : hlsMediaPlaylist.trailingParts;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                HlsMediaPlaylist.Part part = list.get(i2);
                if (j4 >= part.relativeStartTimeUs + part.durationUs) {
                    i2++;
                } else if (part.isIndependent) {
                    j5 += list == hlsMediaPlaylist.trailingParts ? 1L : 0L;
                    r1 = i2;
                }
            }
        }
        return new Pair<>(Long.valueOf(j5), Integer.valueOf(r1));
    }

    /* renamed from: h */
    public int m20057h(long j, List<? extends MediaChunk> list) {
        return (this.f25904n != null || this.f25907q.length() < 2) ? list.size() : this.f25907q.evaluateQueueSize(j, list);
    }

    /* renamed from: j */
    public TrackGroup m20058j() {
        return this.f25898h;
    }

    /* renamed from: k */
    public ExoTrackSelection m20059k() {
        return this.f25907q;
    }

    @Nullable
    /* renamed from: l */
    public final Chunk m20060l(@Nullable Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        byte[] m20048d = this.f25900j.m20048d(uri);
        if (m20048d != null) {
            this.f25900j.m20047c(uri, m20048d);
            return null;
        }
        return new C4878a(this.f25893c, new DataSpec.Builder().setUri(uri).setFlags(1).build(), this.f25896f[i], this.f25907q.getSelectionReason(), this.f25907q.getSelectionData(), this.f25903m);
    }

    /* renamed from: m */
    public boolean m20061m(Chunk chunk, long j) {
        ExoTrackSelection exoTrackSelection = this.f25907q;
        return exoTrackSelection.blacklist(exoTrackSelection.indexOf(this.f25898h.indexOf(chunk.trackFormat)), j);
    }

    /* renamed from: n */
    public void m20062n() throws IOException {
        IOException iOException = this.f25904n;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.f25905o;
        if (uri == null || !this.f25909s) {
            return;
        }
        this.f25897g.maybeThrowPlaylistRefreshError(uri);
    }

    /* renamed from: o */
    public boolean m20063o(Uri uri) {
        return Util.contains(this.f25895e, uri);
    }

    /* renamed from: p */
    public void m20064p(Chunk chunk) {
        if (chunk instanceof C4878a) {
            C4878a c4878a = (C4878a) chunk;
            this.f25903m = c4878a.getDataHolder();
            this.f25900j.m20047c(c4878a.dataSpec.uri, (byte[]) Assertions.checkNotNull(c4878a.m20072b()));
        }
    }

    /* renamed from: q */
    public boolean m20065q(Uri uri, long j) {
        int indexOf;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.f25895e;
            if (i >= uriArr.length) {
                i = -1;
                break;
            }
            if (uriArr[i].equals(uri)) {
                break;
            }
            i++;
        }
        if (i == -1 || (indexOf = this.f25907q.indexOf(i)) == -1) {
            return true;
        }
        this.f25909s |= uri.equals(this.f25905o);
        return j == C4649C.TIME_UNSET || (this.f25907q.blacklist(indexOf, j) && this.f25897g.excludeMediaPlaylist(uri, j));
    }

    /* renamed from: r */
    public void m20066r() {
        this.f25904n = null;
    }

    /* renamed from: s */
    public final long m20067s(long j) {
        long j2 = this.f25908r;
        return (j2 > C4649C.TIME_UNSET ? 1 : (j2 == C4649C.TIME_UNSET ? 0 : -1)) != 0 ? j2 - j : C4649C.TIME_UNSET;
    }

    /* renamed from: t */
    public void m20068t(boolean z) {
        this.f25902l = z;
    }

    /* renamed from: u */
    public void m20069u(ExoTrackSelection exoTrackSelection) {
        this.f25907q = exoTrackSelection;
    }

    /* renamed from: v */
    public boolean m20070v(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.f25904n != null) {
            return false;
        }
        return this.f25907q.shouldCancelChunkLoad(j, chunk, list);
    }

    /* renamed from: w */
    public final void m20071w(HlsMediaPlaylist hlsMediaPlaylist) {
        this.f25908r = hlsMediaPlaylist.hasEndTag ? C4649C.TIME_UNSET : hlsMediaPlaylist.getEndTimeUs() - this.f25897g.getInitialStartTimeUs();
    }
}
