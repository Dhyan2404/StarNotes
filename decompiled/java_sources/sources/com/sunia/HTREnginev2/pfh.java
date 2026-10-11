package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class pfh {

    /* renamed from: a */
    public static final long f80747a = -862048943;

    /* renamed from: b */
    public static final long f80748b = 461845907;

    /* renamed from: c */
    public static final int f80749c = 1073741824;

    /* renamed from: a */
    public static int m56254a(int i, double d) {
        int max = Math.max(i, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max <= ((int) (d * highestOneBit))) {
            return highestOneBit;
        }
        int i2 = highestOneBit << 1;
        if (i2 > 0) {
            return i2;
        }
        return 1073741824;
    }

    /* renamed from: b */
    public static boolean m56255b(int i, int i2, double d) {
        return ((double) i) > d * ((double) i2) && i2 < 1073741824;
    }

    /* renamed from: c */
    public static int m56256c(int i) {
        return (int) (Integer.rotateLeft((int) (i * f80747a), 15) * f80748b);
    }

    /* renamed from: d */
    public static int m56257d(@CheckForNull Object obj) {
        return m56256c(obj == null ? 0 : obj.hashCode());
    }
}
