package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.SeekMap;

/* loaded from: classes5.dex */
public class ConstantBitrateSeekMap implements SeekMap {

    /* renamed from: a */
    public final long f23492a;

    /* renamed from: b */
    public final long f23493b;

    /* renamed from: c */
    public final int f23494c;

    /* renamed from: d */
    public final long f23495d;

    /* renamed from: e */
    public final int f23496e;

    /* renamed from: f */
    public final long f23497f;

    /* renamed from: g */
    public final boolean f23498g;

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2) {
        this(j, j2, i, i2, false);
    }

    /* renamed from: b */
    public static long m18781b(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    /* renamed from: a */
    public final long m18782a(long j) {
        int i = this.f23494c;
        long j2 = (((j * this.f23496e) / 8000000) / i) * i;
        long j3 = this.f23495d;
        if (j3 != -1) {
            j2 = Math.min(j2, j3 - i);
        }
        return this.f23493b + Math.max(j2, 0L);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f23497f;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (this.f23495d == -1 && !this.f23498g) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.f23493b));
        }
        long m18782a = m18782a(j);
        long timeUsAtPosition = getTimeUsAtPosition(m18782a);
        SeekPoint seekPoint = new SeekPoint(timeUsAtPosition, m18782a);
        if (this.f23495d != -1 && timeUsAtPosition < j) {
            int i = this.f23494c;
            if (i + m18782a < this.f23492a) {
                long j2 = m18782a + i;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUsAtPosition(j2), j2));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUsAtPosition(long j) {
        return m18781b(j, this.f23493b, this.f23496e);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.f23495d != -1 || this.f23498g;
    }

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2, boolean z) {
        this.f23492a = j;
        this.f23493b = j2;
        this.f23494c = i2 == -1 ? 1 : i2;
        this.f23496e = i;
        this.f23498g = z;
        if (j == -1) {
            this.f23495d = -1L;
            this.f23497f = C4649C.TIME_UNSET;
        } else {
            this.f23495d = j - j2;
            this.f23497f = m18781b(j, j2, i);
        }
    }
}
