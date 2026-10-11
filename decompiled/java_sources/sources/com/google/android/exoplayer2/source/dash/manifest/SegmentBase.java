package com.google.android.exoplayer2.source.dash.manifest;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Util;
import com.google.common.math.BigIntegerMath;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class SegmentBase {

    /* renamed from: a */
    @Nullable
    public final RangedUri f25843a;

    /* renamed from: b */
    public final long f25844b;

    /* renamed from: c */
    public final long f25845c;

    /* loaded from: classes5.dex */
    public static abstract class MultiSegmentBase extends SegmentBase {

        /* renamed from: d */
        public final long f25846d;

        /* renamed from: e */
        public final long f25847e;

        /* renamed from: f */
        @Nullable
        public final List<SegmentTimelineElement> f25848f;

        /* renamed from: g */
        public final long f25849g;

        /* renamed from: h */
        public final long f25850h;

        /* renamed from: i */
        @VisibleForTesting
        public final long f25851i;

        public MultiSegmentBase(@Nullable RangedUri rangedUri, long j, long j2, long j3, long j4, @Nullable List<SegmentTimelineElement> list, long j5, long j6, long j7) {
            super(rangedUri, j, j2);
            this.f25846d = j3;
            this.f25847e = j4;
            this.f25848f = list;
            this.f25851i = j5;
            this.f25849g = j6;
            this.f25850h = j7;
        }

        public long getAvailableSegmentCount(long j, long j2) {
            long segmentCount = getSegmentCount(j);
            return segmentCount != -1 ? segmentCount : (int) (getSegmentNum((j2 - this.f25850h) + this.f25851i, j) - getFirstAvailableSegmentNum(j, j2));
        }

        public long getFirstAvailableSegmentNum(long j, long j2) {
            if (getSegmentCount(j) == -1) {
                long j3 = this.f25849g;
                if (j3 != C4649C.TIME_UNSET) {
                    return Math.max(getFirstSegmentNum(), getSegmentNum((j2 - this.f25850h) - j3, j));
                }
            }
            return getFirstSegmentNum();
        }

        public long getFirstSegmentNum() {
            return this.f25846d;
        }

        public long getNextSegmentAvailableTimeUs(long j, long j2) {
            if (this.f25848f != null) {
                return C4649C.TIME_UNSET;
            }
            long firstAvailableSegmentNum = getFirstAvailableSegmentNum(j, j2) + getAvailableSegmentCount(j, j2);
            return (getSegmentTimeUs(firstAvailableSegmentNum) + getSegmentDurationUs(firstAvailableSegmentNum, j)) - this.f25851i;
        }

        public abstract long getSegmentCount(long j);

        public final long getSegmentDurationUs(long j, long j2) {
            List<SegmentTimelineElement> list = this.f25848f;
            if (list != null) {
                return (list.get((int) (j - this.f25846d)).f25857b * 1000000) / this.f25844b;
            }
            long segmentCount = getSegmentCount(j2);
            return (segmentCount == -1 || j != (getFirstSegmentNum() + segmentCount) - 1) ? (this.f25847e * 1000000) / this.f25844b : j2 - getSegmentTimeUs(j);
        }

        public long getSegmentNum(long j, long j2) {
            long firstSegmentNum = getFirstSegmentNum();
            long segmentCount = getSegmentCount(j2);
            if (segmentCount == 0) {
                return firstSegmentNum;
            }
            if (this.f25848f == null) {
                long j3 = this.f25846d + (j / ((this.f25847e * 1000000) / this.f25844b));
                return j3 < firstSegmentNum ? firstSegmentNum : segmentCount == -1 ? j3 : Math.min(j3, (firstSegmentNum + segmentCount) - 1);
            }
            long j4 = (segmentCount + firstSegmentNum) - 1;
            long j5 = firstSegmentNum;
            while (j5 <= j4) {
                long j6 = ((j4 - j5) / 2) + j5;
                long segmentTimeUs = getSegmentTimeUs(j6);
                if (segmentTimeUs < j) {
                    j5 = j6 + 1;
                } else {
                    if (segmentTimeUs <= j) {
                        return j6;
                    }
                    j4 = j6 - 1;
                }
            }
            return j5 == firstSegmentNum ? j5 : j4;
        }

        public final long getSegmentTimeUs(long j) {
            List<SegmentTimelineElement> list = this.f25848f;
            return Util.scaleLargeTimestamp(list != null ? list.get((int) (j - this.f25846d)).f25856a - this.f25845c : (j - this.f25846d) * this.f25847e, 1000000L, this.f25844b);
        }

        public abstract RangedUri getSegmentUrl(Representation representation, long j);

        public boolean isExplicit() {
            return this.f25848f != null;
        }
    }

    /* loaded from: classes5.dex */
    public static final class SegmentList extends MultiSegmentBase {

        /* renamed from: j */
        @Nullable
        public final List<RangedUri> f25852j;

        public SegmentList(RangedUri rangedUri, long j, long j2, long j3, long j4, @Nullable List<SegmentTimelineElement> list, long j5, @Nullable List<RangedUri> list2, long j6, long j7) {
            super(rangedUri, j, j2, j3, j4, list, j5, j6, j7);
            this.f25852j = list2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j) {
            return this.f25852j.size();
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, long j) {
            return this.f25852j.get((int) (j - this.f25846d));
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public boolean isExplicit() {
            return true;
        }
    }

    /* loaded from: classes5.dex */
    public static final class SegmentTemplate extends MultiSegmentBase {

        /* renamed from: j */
        @Nullable
        public final UrlTemplate f25853j;

        /* renamed from: k */
        @Nullable
        public final UrlTemplate f25854k;

        /* renamed from: l */
        public final long f25855l;

        public SegmentTemplate(RangedUri rangedUri, long j, long j2, long j3, long j4, long j5, @Nullable List<SegmentTimelineElement> list, long j6, @Nullable UrlTemplate urlTemplate, @Nullable UrlTemplate urlTemplate2, long j7, long j8) {
            super(rangedUri, j, j2, j3, j5, list, j6, j7, j8);
            this.f25853j = urlTemplate;
            this.f25854k = urlTemplate2;
            this.f25855l = j4;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase
        @Nullable
        public RangedUri getInitialization(Representation representation) {
            UrlTemplate urlTemplate = this.f25853j;
            if (urlTemplate == null) {
                return super.getInitialization(representation);
            }
            Format format = representation.format;
            return new RangedUri(urlTemplate.buildUri(format.f22448id, 0L, format.bitrate, 0L), 0L, -1L);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j) {
            if (this.f25848f != null) {
                return r0.size();
            }
            long j2 = this.f25855l;
            if (j2 != -1) {
                return (j2 - this.f25846d) + 1;
            }
            if (j != C4649C.TIME_UNSET) {
                return BigIntegerMath.divide(BigInteger.valueOf(j).multiply(BigInteger.valueOf(this.f25844b)), BigInteger.valueOf(this.f25847e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, long j) {
            List<SegmentTimelineElement> list = this.f25848f;
            long j2 = list != null ? list.get((int) (j - this.f25846d)).f25856a : (j - this.f25846d) * this.f25847e;
            UrlTemplate urlTemplate = this.f25854k;
            Format format = representation.format;
            return new RangedUri(urlTemplate.buildUri(format.f22448id, j, format.bitrate, j2), 0L, -1L);
        }
    }

    /* loaded from: classes5.dex */
    public static final class SegmentTimelineElement {

        /* renamed from: a */
        public final long f25856a;

        /* renamed from: b */
        public final long f25857b;

        public SegmentTimelineElement(long j, long j2) {
            this.f25856a = j;
            this.f25857b = j2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SegmentTimelineElement.class != obj.getClass()) {
                return false;
            }
            SegmentTimelineElement segmentTimelineElement = (SegmentTimelineElement) obj;
            return this.f25856a == segmentTimelineElement.f25856a && this.f25857b == segmentTimelineElement.f25857b;
        }

        public int hashCode() {
            return (((int) this.f25856a) * 31) + ((int) this.f25857b);
        }
    }

    public SegmentBase(@Nullable RangedUri rangedUri, long j, long j2) {
        this.f25843a = rangedUri;
        this.f25844b = j;
        this.f25845c = j2;
    }

    @Nullable
    public RangedUri getInitialization(Representation representation) {
        return this.f25843a;
    }

    public long getPresentationTimeOffsetUs() {
        return Util.scaleLargeTimestamp(this.f25845c, 1000000L, this.f25844b);
    }

    /* loaded from: classes5.dex */
    public static class SingleSegmentBase extends SegmentBase {

        /* renamed from: d */
        public final long f25858d;

        /* renamed from: e */
        public final long f25859e;

        public SingleSegmentBase(@Nullable RangedUri rangedUri, long j, long j2, long j3, long j4) {
            super(rangedUri, j, j2);
            this.f25858d = j3;
            this.f25859e = j4;
        }

        @Nullable
        public RangedUri getIndex() {
            long j = this.f25859e;
            if (j <= 0) {
                return null;
            }
            return new RangedUri(null, this.f25858d, j);
        }

        public SingleSegmentBase() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
