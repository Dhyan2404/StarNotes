package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class TimedValueQueue<V> {

    /* renamed from: e */
    public static final int f28457e = 10;

    /* renamed from: a */
    public long[] f28458a;

    /* renamed from: b */
    public V[] f28459b;

    /* renamed from: c */
    public int f28460c;

    /* renamed from: d */
    public int f28461d;

    public TimedValueQueue() {
        this(10);
    }

    /* renamed from: d */
    public static <V> V[] m21532d(int i) {
        return (V[]) new Object[i];
    }

    /* renamed from: a */
    public final void m21533a(long j, V v) {
        int i = this.f28460c;
        int i2 = this.f28461d;
        V[] vArr = this.f28459b;
        int length = (i + i2) % vArr.length;
        this.f28458a[length] = j;
        vArr[length] = v;
        this.f28461d = i2 + 1;
    }

    public synchronized void add(long j, V v) {
        m21534b(j);
        m21535c();
        m21533a(j, v);
    }

    /* renamed from: b */
    public final void m21534b(long j) {
        if (this.f28461d > 0) {
            if (j <= this.f28458a[((this.f28460c + r0) - 1) % this.f28459b.length]) {
                clear();
            }
        }
    }

    /* renamed from: c */
    public final void m21535c() {
        int length = this.f28459b.length;
        if (this.f28461d < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        V[] vArr = (V[]) m21532d(i);
        int i2 = this.f28460c;
        int i3 = length - i2;
        System.arraycopy(this.f28458a, i2, jArr, 0, i3);
        System.arraycopy(this.f28459b, this.f28460c, vArr, 0, i3);
        int i4 = this.f28460c;
        if (i4 > 0) {
            System.arraycopy(this.f28458a, 0, jArr, i3, i4);
            System.arraycopy(this.f28459b, 0, vArr, i3, this.f28460c);
        }
        this.f28458a = jArr;
        this.f28459b = vArr;
        this.f28460c = 0;
    }

    public synchronized void clear() {
        this.f28460c = 0;
        this.f28461d = 0;
        Arrays.fill(this.f28459b, (Object) null);
    }

    @Nullable
    /* renamed from: e */
    public final V m21536e(long j, boolean z) {
        V v = null;
        long j2 = Long.MAX_VALUE;
        while (this.f28461d > 0) {
            long j3 = j - this.f28458a[this.f28460c];
            if (j3 < 0 && (z || (-j3) >= j2)) {
                break;
            }
            v = m21537f();
            j2 = j3;
        }
        return v;
    }

    @Nullable
    /* renamed from: f */
    public final V m21537f() {
        Assertions.checkState(this.f28461d > 0);
        V[] vArr = this.f28459b;
        int i = this.f28460c;
        V v = vArr[i];
        vArr[i] = null;
        this.f28460c = (i + 1) % vArr.length;
        this.f28461d--;
        return v;
    }

    @Nullable
    public synchronized V poll(long j) {
        return m21536e(j, false);
    }

    @Nullable
    public synchronized V pollFirst() {
        return this.f28461d == 0 ? null : m21537f();
    }

    @Nullable
    public synchronized V pollFloor(long j) {
        return m21536e(j, true);
    }

    public synchronized int size() {
        return this.f28461d;
    }

    public TimedValueQueue(int i) {
        this.f28458a = new long[i];
        this.f28459b = (V[]) m21532d(i);
    }
}
