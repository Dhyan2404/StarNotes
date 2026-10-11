package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Seeker;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class vji implements Seeker {

    /* renamed from: e */
    @VisibleForTesting
    public static final long f87571e = 100000;

    /* renamed from: a */
    public final long f87572a;

    /* renamed from: b */
    public final LongArray f87573b;

    /* renamed from: c */
    public final LongArray f87574c;

    /* renamed from: d */
    public long f87575d;

    public vji(long j, long j2, long j3) {
        this.f87575d = j;
        this.f87572a = j3;
        LongArray longArray = new LongArray();
        this.f87573b = longArray;
        LongArray longArray2 = new LongArray();
        this.f87574c = longArray2;
        longArray.add(0L);
        longArray2.add(j2);
    }

    /* renamed from: a */
    public boolean m57805a(long j) {
        LongArray longArray = this.f87573b;
        return j - longArray.get(longArray.size() - 1) < 100000;
    }

    /* renamed from: b */
    public void m57806b(long j, long j2) {
        if (m57805a(j)) {
            return;
        }
        this.f87573b.add(j);
        this.f87574c.add(j2);
    }

    /* renamed from: c */
    public void m57807c(long j) {
        this.f87575d = j;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.f87572a;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f87575d;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.f87573b, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.f87573b.get(binarySearchFloor), this.f87574c.get(binarySearchFloor));
        if (seekPoint.timeUs == j || binarySearchFloor == this.f87573b.size() - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.f87573b.get(i), this.f87574c.get(i)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.f87573b.get(Util.binarySearchFloor(this.f87574c, j, true, true));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
