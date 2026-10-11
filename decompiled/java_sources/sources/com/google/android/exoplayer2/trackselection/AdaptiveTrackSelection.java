package com.google.android.exoplayer2.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* loaded from: classes5.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;

    /* renamed from: t */
    public static final String f27278t = "AdaptiveTrackSelection";

    /* renamed from: u */
    public static final long f27279u = 1000;

    /* renamed from: e */
    public final BandwidthMeter f27280e;

    /* renamed from: f */
    public final long f27281f;

    /* renamed from: g */
    public final long f27282g;

    /* renamed from: h */
    public final long f27283h;

    /* renamed from: i */
    public final int f27284i;

    /* renamed from: j */
    public final int f27285j;

    /* renamed from: k */
    public final float f27286k;

    /* renamed from: l */
    public final float f27287l;

    /* renamed from: m */
    public final ImmutableList<AdaptationCheckpoint> f27288m;

    /* renamed from: n */
    public final Clock f27289n;

    /* renamed from: o */
    public float f27290o;

    /* renamed from: p */
    public int f27291p;

    /* renamed from: q */
    public int f27292q;

    /* renamed from: r */
    public long f27293r;

    /* renamed from: s */
    @Nullable
    public MediaChunk f27294s;

    /* loaded from: classes5.dex */
    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public AdaptationCheckpoint(long j, long j2) {
            this.totalBandwidth = j;
            this.allocatedBandwidth = j2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }
    }

    /* loaded from: classes5.dex */
    public static class Factory implements ExoTrackSelection.Factory {

        /* renamed from: a */
        public final int f27295a;

        /* renamed from: b */
        public final int f27296b;

        /* renamed from: c */
        public final int f27297c;

        /* renamed from: d */
        public final int f27298d;

        /* renamed from: e */
        public final int f27299e;

        /* renamed from: f */
        public final float f27300f;

        /* renamed from: g */
        public final float f27301g;

        /* renamed from: h */
        public final Clock f27302h;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public AdaptiveTrackSelection createAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i, BandwidthMeter bandwidthMeter, ImmutableList<AdaptationCheckpoint> immutableList) {
            return new AdaptiveTrackSelection(trackGroup, iArr, i, bandwidthMeter, this.f27295a, this.f27296b, this.f27297c, this.f27298d, this.f27299e, this.f27300f, this.f27301g, immutableList, this.f27302h);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
        public final ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            ImmutableList m20781f = AdaptiveTrackSelection.m20781f(definitionArr);
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
            for (int i = 0; i < definitionArr.length; i++) {
                ExoTrackSelection.Definition definition = definitionArr[i];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length != 0) {
                        exoTrackSelectionArr[i] = iArr.length == 1 ? new FixedTrackSelection(definition.group, iArr[0], definition.type) : createAdaptiveTrackSelection(definition.group, iArr, definition.type, bandwidthMeter, (ImmutableList) m20781f.get(i));
                    }
                }
            }
            return exoTrackSelectionArr;
        }

        public Factory(int i, int i2, int i3, float f) {
            this(i, i2, i3, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, int i4, int i5, float f) {
            this(i, i2, i3, i4, i5, f, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, float f, float f2, Clock clock) {
            this(i, i2, i3, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, f2, clock);
        }

        public Factory(int i, int i2, int i3, int i4, int i5, float f, float f2, Clock clock) {
            this.f27295a = i;
            this.f27296b = i2;
            this.f27297c = i3;
            this.f27298d = i4;
            this.f27299e = i5;
            this.f27300f = f;
            this.f27301g = f2;
            this.f27302h = clock;
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, 10000L, 25000L, 25000L, DEFAULT_MAX_WIDTH_TO_DISCARD, DEFAULT_MAX_HEIGHT_TO_DISCARD, 0.7f, 0.75f, ImmutableList.m26161of(), Clock.DEFAULT);
    }

    /* renamed from: d */
    public static void m20780d(List<ImmutableList.Builder<AdaptationCheckpoint>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            ImmutableList.Builder<AdaptationCheckpoint> builder = list.get(i);
            if (builder != null) {
                builder.add((ImmutableList.Builder<AdaptationCheckpoint>) new AdaptationCheckpoint(j, jArr[i]));
            }
        }
    }

    /* renamed from: f */
    public static ImmutableList<ImmutableList<AdaptationCheckpoint>> m20781f(ExoTrackSelection.Definition[] definitionArr) {
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection.Definition definition : definitionArr) {
            if (definition == null || definition.tracks.length <= 1) {
                arrayList.add(null);
            } else {
                ImmutableList.Builder builder = ImmutableList.builder();
                builder.add((ImmutableList.Builder) new AdaptationCheckpoint(0L, 0L));
                arrayList.add(builder);
            }
        }
        long[][] m20782j = m20782j(definitionArr);
        int[] iArr = new int[m20782j.length];
        long[] jArr = new long[m20782j.length];
        for (int i = 0; i < m20782j.length; i++) {
            long[] jArr2 = m20782j[i];
            jArr[i] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        m20780d(arrayList, jArr);
        ImmutableList<Integer> m20783k = m20783k(m20782j);
        for (int i2 = 0; i2 < m20783k.size(); i2++) {
            int intValue = m20783k.get(i2).intValue();
            int i3 = iArr[intValue] + 1;
            iArr[intValue] = i3;
            jArr[intValue] = m20782j[intValue][i3];
            m20780d(arrayList, jArr);
        }
        for (int i4 = 0; i4 < definitionArr.length; i4++) {
            if (arrayList.get(i4) != null) {
                jArr[i4] = jArr[i4] * 2;
            }
        }
        m20780d(arrayList, jArr);
        ImmutableList.Builder builder2 = ImmutableList.builder();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            ImmutableList.Builder builder3 = (ImmutableList.Builder) arrayList.get(i5);
            builder2.add((ImmutableList.Builder) (builder3 == null ? ImmutableList.m26161of() : builder3.build()));
        }
        return builder2.build();
    }

    /* renamed from: j */
    public static long[][] m20782j(ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length];
        for (int i = 0; i < definitionArr.length; i++) {
            ExoTrackSelection.Definition definition = definitionArr[i];
            if (definition == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[definition.tracks.length];
                int i2 = 0;
                while (true) {
                    if (i2 >= definition.tracks.length) {
                        break;
                    }
                    jArr[i][i2] = definition.group.getFormat(r5[i2]).bitrate;
                    i2++;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    /* renamed from: k */
    public static ImmutableList<Integer> m20783k(long[][] jArr) {
        Multimap build = MultimapBuilder.treeKeys().arrayListValues().build();
        for (int i = 0; i < jArr.length; i++) {
            long[] jArr2 = jArr[i];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    long[] jArr3 = jArr[i];
                    double d = 0.0d;
                    if (i2 >= jArr3.length) {
                        break;
                    }
                    long j = jArr3[i2];
                    if (j != -1) {
                        d = Math.log(j);
                    }
                    dArr[i2] = d;
                    i2++;
                }
                int i3 = length - 1;
                double d2 = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d3 = dArr[i4];
                    i4++;
                    build.put(Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i4]) * 0.5d) - dArr[0]) / d2), Integer.valueOf(i));
                }
            }
        }
        return ImmutableList.copyOf(build.values());
    }

    public boolean canSelectFormat(Format format, int i, long j) {
        return ((long) i) <= j;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    @CallSuper
    public void disable() {
        this.f27294s = null;
    }

    /* renamed from: e */
    public final int m20784e(long j, long j2) {
        long m20785g = m20785g(j2);
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (j == Long.MIN_VALUE || !isBlacklisted(i2, j)) {
                Format format = getFormat(i2);
                if (canSelectFormat(format, format.bitrate, m20785g)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    @CallSuper
    public void enable() {
        this.f27293r = C4649C.TIME_UNSET;
        this.f27294s = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        int i;
        int i2;
        long elapsedRealtime = this.f27289n.elapsedRealtime();
        if (!shouldEvaluateQueueSize(elapsedRealtime, list)) {
            return list.size();
        }
        this.f27293r = elapsedRealtime;
        this.f27294s = list.isEmpty() ? null : (MediaChunk) Iterables.getLast(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j, this.f27290o);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration < minDurationToRetainAfterDiscardUs) {
            return size;
        }
        Format format = getFormat(m20784e(elapsedRealtime, m20786h(list)));
        for (int i3 = 0; i3 < size; i3++) {
            MediaChunk mediaChunk = list.get(i3);
            Format format2 = mediaChunk.trackFormat;
            if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j, this.f27290o) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i = format2.height) != -1 && i <= this.f27285j && (i2 = format2.width) != -1 && i2 <= this.f27284i && i < format.height) {
                return i3;
            }
        }
        return size;
    }

    /* renamed from: g */
    public final long m20785g(long j) {
        long m20788l = m20788l(j);
        if (this.f27288m.isEmpty()) {
            return m20788l;
        }
        int i = 1;
        while (i < this.f27288m.size() - 1 && this.f27288m.get(i).totalBandwidth < m20788l) {
            i++;
        }
        AdaptationCheckpoint adaptationCheckpoint = this.f27288m.get(i - 1);
        AdaptationCheckpoint adaptationCheckpoint2 = this.f27288m.get(i);
        long j2 = adaptationCheckpoint.totalBandwidth;
        float f = ((float) (m20788l - j2)) / ((float) (adaptationCheckpoint2.totalBandwidth - j2));
        return adaptationCheckpoint.allocatedBandwidth + (f * ((float) (adaptationCheckpoint2.allocatedBandwidth - r0)));
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.f27283h;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.f27291p;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.f27292q;
    }

    /* renamed from: h */
    public final long m20786h(List<? extends MediaChunk> list) {
        if (list.isEmpty()) {
            return C4649C.TIME_UNSET;
        }
        MediaChunk mediaChunk = (MediaChunk) Iterables.getLast(list);
        long j = mediaChunk.startTimeUs;
        if (j == C4649C.TIME_UNSET) {
            return C4649C.TIME_UNSET;
        }
        long j2 = mediaChunk.endTimeUs;
        return j2 != C4649C.TIME_UNSET ? j2 - j : C4649C.TIME_UNSET;
    }

    /* renamed from: i */
    public final long m20787i(MediaChunkIterator[] mediaChunkIteratorArr, List<? extends MediaChunk> list) {
        int i = this.f27291p;
        if (i < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i].next()) {
            MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.f27291p];
            return mediaChunkIterator.getChunkEndTimeUs() - mediaChunkIterator.getChunkStartTimeUs();
        }
        for (MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.getChunkEndTimeUs() - mediaChunkIterator2.getChunkStartTimeUs();
            }
        }
        return m20786h(list);
    }

    /* renamed from: l */
    public final long m20788l(long j) {
        long bitrateEstimate = ((float) this.f27280e.getBitrateEstimate()) * this.f27286k;
        if (this.f27280e.getTimeToFirstByteEstimateUs() == C4649C.TIME_UNSET || j == C4649C.TIME_UNSET) {
            return ((float) bitrateEstimate) / this.f27290o;
        }
        float f = (float) j;
        return (((float) bitrateEstimate) * Math.max((f / this.f27290o) - ((float) r2), 0.0f)) / f;
    }

    /* renamed from: m */
    public final long m20789m(long j, long j2) {
        if (j == C4649C.TIME_UNSET) {
            return this.f27281f;
        }
        if (j2 != C4649C.TIME_UNSET) {
            j -= j2;
        }
        return Math.min(((float) j) * this.f27287l, this.f27281f);
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
        this.f27290o = f;
    }

    public boolean shouldEvaluateQueueSize(long j, List<? extends MediaChunk> list) {
        long j2 = this.f27293r;
        return j2 == C4649C.TIME_UNSET || j - j2 >= 1000 || !(list.isEmpty() || ((MediaChunk) Iterables.getLast(list)).equals(this.f27294s));
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long elapsedRealtime = this.f27289n.elapsedRealtime();
        long m20787i = m20787i(mediaChunkIteratorArr, list);
        int i = this.f27292q;
        if (i == 0) {
            this.f27292q = 1;
            this.f27291p = m20784e(elapsedRealtime, m20787i);
            return;
        }
        int i2 = this.f27291p;
        int indexOf = list.isEmpty() ? -1 : indexOf(((MediaChunk) Iterables.getLast(list)).trackFormat);
        if (indexOf != -1) {
            i = ((MediaChunk) Iterables.getLast(list)).trackSelectionReason;
            i2 = indexOf;
        }
        int m20784e = m20784e(elapsedRealtime, m20787i);
        if (!isBlacklisted(i2, elapsedRealtime)) {
            Format format = getFormat(i2);
            Format format2 = getFormat(m20784e);
            long m20789m = m20789m(j3, m20787i);
            int i3 = format2.bitrate;
            int i4 = format.bitrate;
            if ((i3 > i4 && j2 < m20789m) || (i3 < i4 && j2 >= this.f27282g)) {
                m20784e = i2;
            }
        }
        if (m20784e != i2) {
            i = 3;
        }
        this.f27292q = i;
        this.f27291p = m20784e;
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i, BandwidthMeter bandwidthMeter, long j, long j2, long j3, int i2, int i3, float f, float f2, List<AdaptationCheckpoint> list, Clock clock) {
        super(trackGroup, iArr, i);
        BandwidthMeter bandwidthMeter2;
        long j4;
        if (j3 < j) {
            Log.m21493w(f27278t, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            bandwidthMeter2 = bandwidthMeter;
            j4 = j;
        } else {
            bandwidthMeter2 = bandwidthMeter;
            j4 = j3;
        }
        this.f27280e = bandwidthMeter2;
        this.f27281f = j * 1000;
        this.f27282g = j2 * 1000;
        this.f27283h = j4 * 1000;
        this.f27284i = i2;
        this.f27285j = i3;
        this.f27286k = f;
        this.f27287l = f2;
        this.f27288m = ImmutableList.copyOf((Collection) list);
        this.f27289n = clock;
        this.f27290o = 1.0f;
        this.f27292q = 0;
        this.f27293r = C4649C.TIME_UNSET;
    }
}
