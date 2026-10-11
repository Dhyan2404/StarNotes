package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class ykn {

    /* renamed from: a */
    public final Track f90835a;

    /* renamed from: b */
    public final int f90836b;

    /* renamed from: c */
    public final long[] f90837c;

    /* renamed from: d */
    public final int[] f90838d;

    /* renamed from: e */
    public final int f90839e;

    /* renamed from: f */
    public final long[] f90840f;

    /* renamed from: g */
    public final int[] f90841g;

    /* renamed from: h */
    public final long f90842h;

    public ykn(Track track, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        Assertions.checkArgument(iArr.length == jArr2.length);
        Assertions.checkArgument(jArr.length == jArr2.length);
        Assertions.checkArgument(iArr2.length == jArr2.length);
        this.f90835a = track;
        this.f90837c = jArr;
        this.f90838d = iArr;
        this.f90839e = i;
        this.f90840f = jArr2;
        this.f90841g = iArr2;
        this.f90842h = j;
        this.f90836b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m58450a(long j) {
        for (int binarySearchFloor = Util.binarySearchFloor(this.f90840f, j, true, false); binarySearchFloor >= 0; binarySearchFloor--) {
            if ((this.f90841g[binarySearchFloor] & 1) != 0) {
                return binarySearchFloor;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m58451b(long j) {
        for (int binarySearchCeil = Util.binarySearchCeil(this.f90840f, j, true, false); binarySearchCeil < this.f90840f.length; binarySearchCeil++) {
            if ((this.f90841g[binarySearchCeil] & 1) != 0) {
                return binarySearchCeil;
            }
        }
        return -1;
    }
}
