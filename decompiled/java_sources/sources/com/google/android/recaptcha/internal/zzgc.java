package com.google.android.recaptcha.internal;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes6.dex */
final class zzgc {
    public static void zza(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + MotionUtils.f31761c + j + ", " + j2 + MotionUtils.f31762d);
    }

    public static void zzb(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
