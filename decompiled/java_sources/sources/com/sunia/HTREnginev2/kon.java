package com.sunia.HTREnginev2;

/* loaded from: classes3.dex */
public class kon {

    /* renamed from: d */
    public static kon f75681d = null;

    /* renamed from: e */
    public static final int f75682e = 0;

    /* renamed from: f */
    public static final int f75683f = 1;

    /* renamed from: g */
    public static final float f75684g = 0.017453292f;

    /* renamed from: h */
    public static final float f75685h = 9.0E-4f;

    /* renamed from: i */
    public static final float f75686i = -0.10471976f;

    /* renamed from: j */
    public static final float f75687j = 0.0334196f;

    /* renamed from: k */
    public static final float f75688k = 3.49066E-4f;

    /* renamed from: l */
    public static final float f75689l = 5.236E-6f;

    /* renamed from: m */
    public static final float f75690m = 0.4092797f;

    /* renamed from: n */
    public static final long f75691n = 946728000000L;

    /* renamed from: a */
    public long f75692a;

    /* renamed from: b */
    public long f75693b;

    /* renamed from: c */
    public int f75694c;

    /* renamed from: b */
    public static kon m55296b() {
        if (f75681d == null) {
            f75681d = new kon();
        }
        return f75681d;
    }

    /* renamed from: a */
    public void m55297a(long j, double d, double d2) {
        double d3 = (0.01720197f * (((float) (j - f75691n)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(d3) * 0.03341960161924362d) + d3 + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double round = ((float) Math.round((r3 - 9.0E-4f) - r7)) + 9.0E-4f + ((-d2) / 360.0d) + (Math.sin(d3) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d4 = 0.01745329238474369d * d;
        double sin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d4) * Math.sin(asin))) / (Math.cos(d4) * Math.cos(asin));
        if (sin2 >= 1.0d) {
            this.f75694c = 1;
            this.f75692a = -1L;
            this.f75693b = -1L;
        } else {
            if (sin2 <= -1.0d) {
                this.f75694c = 0;
                this.f75692a = -1L;
                this.f75693b = -1L;
                return;
            }
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.f75692a = Math.round((round + acos) * 8.64E7d) + f75691n;
            long round2 = Math.round((round - acos) * 8.64E7d) + f75691n;
            this.f75693b = round2;
            if (round2 >= j || this.f75692a <= j) {
                this.f75694c = 1;
            } else {
                this.f75694c = 0;
            }
        }
    }
}
