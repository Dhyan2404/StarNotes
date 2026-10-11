package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class FlacSeekTableSeekMap implements SeekMap {

    /* renamed from: a */
    public final FlacStreamMetadata f23529a;

    /* renamed from: b */
    public final long f23530b;

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j) {
        this.f23529a = flacStreamMetadata;
        this.f23530b = j;
    }

    /* renamed from: a */
    public final SeekPoint m18803a(long j, long j2) {
        return new SeekPoint((j * 1000000) / this.f23529a.sampleRate, this.f23530b + j2);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f23529a.getDurationUs();
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        Assertions.checkStateNotNull(this.f23529a.seekTable);
        FlacStreamMetadata flacStreamMetadata = this.f23529a;
        FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.seekTable;
        long[] jArr = seekTable.pointSampleNumbers;
        long[] jArr2 = seekTable.pointOffsets;
        int binarySearchFloor = Util.binarySearchFloor(jArr, flacStreamMetadata.getSampleNumber(j), true, false);
        SeekPoint m18803a = m18803a(binarySearchFloor == -1 ? 0L : jArr[binarySearchFloor], binarySearchFloor != -1 ? jArr2[binarySearchFloor] : 0L);
        if (m18803a.timeUs == j || binarySearchFloor == jArr.length - 1) {
            return new SeekMap.SeekPoints(m18803a);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(m18803a, m18803a(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
