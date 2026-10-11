package com.sunia.HTREnginev2;

import android.util.Pair;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Seeker;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class ooj implements Seeker {

    /* renamed from: a */
    public final long[] f79992a;

    /* renamed from: b */
    public final long[] f79993b;

    /* renamed from: c */
    public final long f79994c;

    public ooj(long[] jArr, long[] jArr2, long j) {
        this.f79992a = jArr;
        this.f79993b = jArr2;
        this.f79994c = j == C4649C.TIME_UNSET ? Util.msToUs(jArr2[jArr2.length - 1]) : j;
    }

    /* renamed from: a */
    public static ooj m56135a(long j, MlltFrame mlltFrame, long j2) {
        int length = mlltFrame.bytesDeviations.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i3];
            j3 += mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new ooj(jArr, jArr2, j2);
    }

    /* renamed from: b */
    public static Pair<Long, Long> m56136b(long j, long[] jArr, long[] jArr2) {
        int binarySearchFloor = Util.binarySearchFloor(jArr, j, true, true);
        long j2 = jArr[binarySearchFloor];
        long j3 = jArr2[binarySearchFloor];
        int i = binarySearchFloor + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr[i] == j2 ? 0.0d : (j - j2) / (r6 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f79994c;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        Pair<Long, Long> m56136b = m56136b(Util.usToMs(Util.constrainValue(j, 0L, this.f79994c)), this.f79993b, this.f79992a);
        return new SeekMap.SeekPoints(new SeekPoint(Util.msToUs(((Long) m56136b.first).longValue()), ((Long) m56136b.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return Util.msToUs(((Long) m56136b(j, this.f79992a, this.f79993b).second).longValue());
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
