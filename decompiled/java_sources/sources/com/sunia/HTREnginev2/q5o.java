package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class q5o implements SeekMap {

    /* renamed from: a */
    public final o5o f81686a;

    /* renamed from: b */
    public final int f81687b;

    /* renamed from: c */
    public final long f81688c;

    /* renamed from: d */
    public final long f81689d;

    /* renamed from: e */
    public final long f81690e;

    public q5o(o5o o5oVar, int i, long j, long j2) {
        this.f81686a = o5oVar;
        this.f81687b = i;
        this.f81688c = j;
        long j3 = (j2 - j) / o5oVar.f79362e;
        this.f81689d = j3;
        this.f81690e = m56648a(j3);
    }

    /* renamed from: a */
    public final long m56648a(long j) {
        return Util.scaleLargeTimestamp(j * this.f81687b, 1000000L, this.f81686a.f79360c);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f81690e;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        long constrainValue = Util.constrainValue((this.f81686a.f79360c * j) / (this.f81687b * 1000000), 0L, this.f81689d - 1);
        long j2 = this.f81688c + (this.f81686a.f79362e * constrainValue);
        long m56648a = m56648a(constrainValue);
        SeekPoint seekPoint = new SeekPoint(m56648a, j2);
        if (m56648a >= j || constrainValue == this.f81689d - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        long j3 = constrainValue + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(m56648a(j3), this.f81688c + (this.f81686a.f79362e * j3)));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
