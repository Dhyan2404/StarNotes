package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class BinarySearchSeeker {

    /* renamed from: b */
    public static final long f23466b = 262144;

    /* renamed from: a */
    public final int f23467a;
    protected final BinarySearchSeekMap seekMap;

    @Nullable
    protected SeekOperationParams seekOperationParams;
    protected final TimestampSeeker timestampSeeker;

    /* loaded from: classes5.dex */
    public static class BinarySearchSeekMap implements SeekMap {

        /* renamed from: a */
        public final SeekTimestampConverter f23468a;

        /* renamed from: b */
        public final long f23469b;

        /* renamed from: c */
        public final long f23470c;

        /* renamed from: d */
        public final long f23471d;

        /* renamed from: e */
        public final long f23472e;

        /* renamed from: f */
        public final long f23473f;

        /* renamed from: g */
        public final long f23474g;

        public BinarySearchSeekMap(SeekTimestampConverter seekTimestampConverter, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f23468a = seekTimestampConverter;
            this.f23469b = j;
            this.f23470c = j2;
            this.f23471d = j3;
            this.f23472e = j4;
            this.f23473f = j5;
            this.f23474g = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.f23469b;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            return new SeekMap.SeekPoints(new SeekPoint(j, SeekOperationParams.calculateNextSearchBytePosition(this.f23468a.timeUsToTargetTime(j), this.f23470c, this.f23471d, this.f23472e, this.f23473f, this.f23474g)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public long timeUsToTargetTime(long j) {
            return this.f23468a.timeUsToTargetTime(j);
        }
    }

    /* loaded from: classes5.dex */
    public static final class DefaultSeekTimestampConverter implements SeekTimestampConverter {
        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    /* loaded from: classes5.dex */
    public static class SeekOperationParams {

        /* renamed from: a */
        public final long f23475a;

        /* renamed from: b */
        public final long f23476b;

        /* renamed from: c */
        public final long f23477c;

        /* renamed from: d */
        public long f23478d;

        /* renamed from: e */
        public long f23479e;

        /* renamed from: f */
        public long f23480f;

        /* renamed from: g */
        public long f23481g;

        /* renamed from: h */
        public long f23482h;

        public SeekOperationParams(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f23475a = j;
            this.f23476b = j2;
            this.f23478d = j3;
            this.f23479e = j4;
            this.f23480f = j5;
            this.f23481g = j6;
            this.f23477c = j7;
            this.f23482h = calculateNextSearchBytePosition(j2, j3, j4, j5, j6, j7);
        }

        public static long calculateNextSearchBytePosition(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return Util.constrainValue(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: h */
        public final long m18769h() {
            return this.f23481g;
        }

        /* renamed from: i */
        public final long m18770i() {
            return this.f23480f;
        }

        /* renamed from: j */
        public final long m18771j() {
            return this.f23482h;
        }

        /* renamed from: k */
        public final long m18772k() {
            return this.f23475a;
        }

        /* renamed from: l */
        public final long m18773l() {
            return this.f23476b;
        }

        /* renamed from: m */
        public final void m18774m() {
            this.f23482h = calculateNextSearchBytePosition(this.f23476b, this.f23478d, this.f23479e, this.f23480f, this.f23481g, this.f23477c);
        }

        /* renamed from: n */
        public final void m18775n(long j, long j2) {
            this.f23479e = j;
            this.f23481g = j2;
            m18774m();
        }

        /* renamed from: o */
        public final void m18776o(long j, long j2) {
            this.f23478d = j;
            this.f23480f = j2;
            m18774m();
        }
    }

    /* loaded from: classes5.dex */
    public interface SeekTimestampConverter {
        long timeUsToTargetTime(long j);
    }

    /* loaded from: classes5.dex */
    public static final class TimestampSearchResult {
        public static final TimestampSearchResult NO_TIMESTAMP_IN_RANGE_RESULT = new TimestampSearchResult(-3, C4649C.TIME_UNSET, -1);
        public static final int TYPE_NO_TIMESTAMP = -3;
        public static final int TYPE_POSITION_OVERESTIMATED = -1;
        public static final int TYPE_POSITION_UNDERESTIMATED = -2;
        public static final int TYPE_TARGET_TIMESTAMP_FOUND = 0;

        /* renamed from: a */
        public final int f23483a;

        /* renamed from: b */
        public final long f23484b;

        /* renamed from: c */
        public final long f23485c;

        public TimestampSearchResult(int i, long j, long j2) {
            this.f23483a = i;
            this.f23484b = j;
            this.f23485c = j2;
        }

        public static TimestampSearchResult overestimatedResult(long j, long j2) {
            return new TimestampSearchResult(-1, j, j2);
        }

        public static TimestampSearchResult targetFoundResult(long j) {
            return new TimestampSearchResult(0, C4649C.TIME_UNSET, j);
        }

        public static TimestampSearchResult underestimatedResult(long j, long j2) {
            return new TimestampSearchResult(-2, j, j2);
        }
    }

    /* loaded from: classes5.dex */
    public interface TimestampSeeker {
        default void onSeekFinished() {
        }

        TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j) throws IOException;
    }

    public BinarySearchSeeker(SeekTimestampConverter seekTimestampConverter, TimestampSeeker timestampSeeker, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.timestampSeeker = timestampSeeker;
        this.f23467a = i;
        this.seekMap = new BinarySearchSeekMap(seekTimestampConverter, j, j2, j3, j4, j5, j6);
    }

    public SeekOperationParams createSeekParamsForTargetTimeUs(long j) {
        return new SeekOperationParams(j, this.seekMap.timeUsToTargetTime(j), this.seekMap.f23470c, this.seekMap.f23471d, this.seekMap.f23472e, this.seekMap.f23473f, this.seekMap.f23474g);
    }

    public final SeekMap getSeekMap() {
        return this.seekMap;
    }

    public int handlePendingSeek(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            SeekOperationParams seekOperationParams = (SeekOperationParams) Assertions.checkStateNotNull(this.seekOperationParams);
            long m18770i = seekOperationParams.m18770i();
            long m18769h = seekOperationParams.m18769h();
            long m18771j = seekOperationParams.m18771j();
            if (m18769h - m18770i <= this.f23467a) {
                markSeekOperationFinished(false, m18770i);
                return seekToPosition(extractorInput, m18770i, positionHolder);
            }
            if (!skipInputUntilPosition(extractorInput, m18771j)) {
                return seekToPosition(extractorInput, m18771j, positionHolder);
            }
            extractorInput.resetPeekPosition();
            TimestampSearchResult searchForTimestamp = this.timestampSeeker.searchForTimestamp(extractorInput, seekOperationParams.m18773l());
            int i = searchForTimestamp.f23483a;
            if (i == -3) {
                markSeekOperationFinished(false, m18771j);
                return seekToPosition(extractorInput, m18771j, positionHolder);
            }
            if (i == -2) {
                seekOperationParams.m18776o(searchForTimestamp.f23484b, searchForTimestamp.f23485c);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    skipInputUntilPosition(extractorInput, searchForTimestamp.f23485c);
                    markSeekOperationFinished(true, searchForTimestamp.f23485c);
                    return seekToPosition(extractorInput, searchForTimestamp.f23485c, positionHolder);
                }
                seekOperationParams.m18775n(searchForTimestamp.f23484b, searchForTimestamp.f23485c);
            }
        }
    }

    public final boolean isSeeking() {
        return this.seekOperationParams != null;
    }

    public final void markSeekOperationFinished(boolean z, long j) {
        this.seekOperationParams = null;
        this.timestampSeeker.onSeekFinished();
        onSeekOperationFinished(z, j);
    }

    public void onSeekOperationFinished(boolean z, long j) {
    }

    public final int seekToPosition(ExtractorInput extractorInput, long j, PositionHolder positionHolder) {
        if (j == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.position = j;
        return 1;
    }

    public final void setSeekTargetUs(long j) {
        SeekOperationParams seekOperationParams = this.seekOperationParams;
        if (seekOperationParams == null || seekOperationParams.m18772k() != j) {
            this.seekOperationParams = createSeekParamsForTargetTimeUs(j);
        }
    }

    public final boolean skipInputUntilPosition(ExtractorInput extractorInput, long j) throws IOException {
        long position = j - extractorInput.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        extractorInput.skipFully((int) position);
        return true;
    }
}
