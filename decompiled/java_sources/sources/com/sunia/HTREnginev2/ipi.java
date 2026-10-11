package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import java.time.Duration;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class ipi {
    /* renamed from: a */
    public static long m54767a(Duration duration) {
        try {
            return duration.toNanos();
        } catch (ArithmeticException unused) {
            return duration.isNegative() ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
    }
}
