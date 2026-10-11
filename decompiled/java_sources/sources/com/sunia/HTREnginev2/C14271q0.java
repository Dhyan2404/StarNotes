package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.q0 */
/* loaded from: classes10.dex */
public class C14271q0 {
    /* renamed from: a */
    public static double m56561a(double d) {
        return Math.log(d + Math.sqrt((d * d) - 1.0d));
    }

    /* renamed from: b */
    public static double m56562b(double d) {
        return Math.atan(1.0d / d);
    }

    /* renamed from: c */
    public static double m56563c(double d) {
        return m56565e(1.0d / d);
    }

    /* renamed from: d */
    public static double m56564d(double d) {
        return Math.log(d + Math.sqrt((d * d) + 1.0d));
    }

    /* renamed from: e */
    public static double m56565e(double d) {
        return Math.log((d + 1.0d) / (1.0d - d)) * 0.5d;
    }

    /* renamed from: f */
    public static double m56566f(double d) {
        return 1.0d / Math.tan(d);
    }

    /* renamed from: g */
    public static double m56567g(double d) {
        return 1.0d / Math.tanh(d);
    }
}
