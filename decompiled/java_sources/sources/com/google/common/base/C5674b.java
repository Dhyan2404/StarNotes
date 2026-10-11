package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.sunia.HTREnginev2.aof;
import java.util.BitSet;

@GwtIncompatible
@aof
/* renamed from: com.google.common.base.b */
/* loaded from: classes6.dex */
public final class C5674b extends CharMatcher.AbstractC5636v {

    /* renamed from: j */
    public static final int f33653j = 1023;

    /* renamed from: k */
    public static final int f33654k = -862048943;

    /* renamed from: l */
    public static final int f33655l = 461845907;

    /* renamed from: m */
    public static final double f33656m = 0.5d;

    /* renamed from: g */
    public final char[] f33657g;

    /* renamed from: h */
    public final boolean f33658h;

    /* renamed from: i */
    public final long f33659i;

    public C5674b(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.f33657g = cArr;
        this.f33659i = j;
        this.f33658h = z;
    }

    @VisibleForTesting
    /* renamed from: j */
    public static int m25871j(int i) {
        if (i == 1) {
            return 2;
        }
        int highestOneBit = Integer.highestOneBit(i - 1) << 1;
        while (highestOneBit * 0.5d < i) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    /* renamed from: k */
    public static CharMatcher m25872k(BitSet bitSet, String str) {
        int i;
        int cardinality = bitSet.cardinality();
        boolean z = bitSet.get(0);
        int m25871j = m25871j(cardinality);
        char[] cArr = new char[m25871j];
        int i2 = m25871j - 1;
        int nextSetBit = bitSet.nextSetBit(0);
        long j = 0;
        while (nextSetBit != -1) {
            long j2 = (1 << nextSetBit) | j;
            int m25873l = m25873l(nextSetBit);
            while (true) {
                i = m25873l & i2;
                if (cArr[i] == 0) {
                    break;
                }
                m25873l = i + 1;
            }
            cArr[i] = (char) nextSetBit;
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
            j = j2;
        }
        return new C5674b(cArr, j, z, str);
    }

    /* renamed from: l */
    public static int m25873l(int i) {
        return Integer.rotateLeft(i * (-862048943), 15) * 461845907;
    }

    @Override // com.google.common.base.CharMatcher
    /* renamed from: g */
    public void mo25775g(BitSet bitSet) {
        if (this.f33658h) {
            bitSet.set(0);
        }
        for (char c : this.f33657g) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }

    /* renamed from: i */
    public final boolean m25874i(int i) {
        return 1 == ((this.f33659i >> i) & 1);
    }

    @Override // com.google.common.base.CharMatcher
    public boolean matches(char c) {
        if (c == 0) {
            return this.f33658h;
        }
        if (!m25874i(c)) {
            return false;
        }
        int length = this.f33657g.length - 1;
        int m25873l = m25873l(c) & length;
        int i = m25873l;
        do {
            char c2 = this.f33657g[i];
            if (c2 == 0) {
                return false;
            }
            if (c2 == c) {
                return true;
            }
            i = (i + 1) & length;
        } while (i != m25873l);
        return false;
    }
}
