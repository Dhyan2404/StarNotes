package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class IndexSeekMap implements SeekMap {

    /* renamed from: a */
    public final long[] f23538a;

    /* renamed from: b */
    public final long[] f23539b;

    /* renamed from: c */
    public final long f23540c;

    /* renamed from: d */
    public final boolean f23541d;

    public IndexSeekMap(long[] jArr, long[] jArr2, long j) {
        Assertions.checkArgument(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.f23541d = z;
        if (!z || jArr2[0] <= 0) {
            this.f23538a = jArr;
            this.f23539b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.f23538a = jArr3;
            long[] jArr4 = new long[i];
            this.f23539b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f23540c = j;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f23540c;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (!this.f23541d) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int binarySearchFloor = Util.binarySearchFloor(this.f23539b, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.f23539b[binarySearchFloor], this.f23538a[binarySearchFloor]);
        if (seekPoint.timeUs == j || binarySearchFloor == this.f23539b.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.f23539b[i], this.f23538a[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.f23541d;
    }
}
