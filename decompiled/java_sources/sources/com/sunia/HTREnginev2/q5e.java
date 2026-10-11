package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class q5e {

    /* renamed from: a */
    public static final byte f81653a = 0;

    /* renamed from: b */
    public static final int f81654b = 5;

    /* renamed from: c */
    public static final int f81655c = 32;

    /* renamed from: d */
    public static final int f81656d = 31;

    /* renamed from: e */
    public static final int f81657e = 1073741823;

    /* renamed from: f */
    public static final int f81658f = 3;

    /* renamed from: g */
    public static final int f81659g = 4;

    /* renamed from: h */
    public static final int f81660h = 256;

    /* renamed from: i */
    public static final int f81661i = 255;

    /* renamed from: j */
    public static final int f81662j = 65536;

    /* renamed from: k */
    public static final int f81663k = 65535;

    /* renamed from: a */
    public static Object m56616a(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        StringBuilder sb = new StringBuilder(52);
        sb.append("must be power of 2 between 2^1 and 2^30: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: b */
    public static int m56617b(int i, int i2) {
        return i & (~i2);
    }

    /* renamed from: c */
    public static int m56618c(int i, int i2) {
        return i & i2;
    }

    /* renamed from: d */
    public static int m56619d(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    /* renamed from: e */
    public static int m56620e(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    /* renamed from: f */
    public static int m56621f(@CheckForNull Object obj, @CheckForNull Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, @CheckForNull Object[] objArr2) {
        int i2;
        int i3;
        int m56257d = pfh.m56257d(obj);
        int i4 = m56257d & i;
        int m56623h = m56623h(obj3, i4);
        if (m56623h == 0) {
            return -1;
        }
        int m56617b = m56617b(m56257d, i);
        int i5 = -1;
        while (true) {
            i2 = m56623h - 1;
            i3 = iArr[i2];
            if (m56617b(i3, i) != m56617b || !Objects.equal(obj, objArr[i2]) || (objArr2 != null && !Objects.equal(obj2, objArr2[i2]))) {
                int m56618c = m56618c(i3, i);
                if (m56618c == 0) {
                    return -1;
                }
                i5 = i2;
                m56623h = m56618c;
            }
        }
        int m56618c2 = m56618c(i3, i);
        if (i5 == -1) {
            m56624i(obj3, i4, m56618c2);
        } else {
            iArr[i5] = m56619d(iArr[i5], m56618c2, i);
        }
        return i2;
    }

    /* renamed from: g */
    public static void m56622g(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    /* renamed from: h */
    public static int m56623h(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? ((short[]) obj)[i] & 65535 : ((int[]) obj)[i];
    }

    /* renamed from: i */
    public static void m56624i(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    /* renamed from: j */
    public static int m56625j(int i) {
        return Math.max(4, pfh.m56254a(i + 1, 1.0d));
    }
}
