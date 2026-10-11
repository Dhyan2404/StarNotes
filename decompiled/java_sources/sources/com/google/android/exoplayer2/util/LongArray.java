package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class LongArray {

    /* renamed from: c */
    public static final int f28387c = 32;

    /* renamed from: a */
    public int f28388a;

    /* renamed from: b */
    public long[] f28389b;

    public LongArray() {
        this(32);
    }

    public void add(long j) {
        int i = this.f28388a;
        long[] jArr = this.f28389b;
        if (i == jArr.length) {
            this.f28389b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f28389b;
        int i2 = this.f28388a;
        this.f28388a = i2 + 1;
        jArr2[i2] = j;
    }

    public long get(int i) {
        if (i >= 0 && i < this.f28388a) {
            return this.f28389b[i];
        }
        int i2 = this.f28388a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public int size() {
        return this.f28388a;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.f28389b, this.f28388a);
    }

    public LongArray(int i) {
        this.f28389b = new long[i];
    }
}
