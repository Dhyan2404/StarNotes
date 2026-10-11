package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes3.dex */
public class SpringStopEngine implements StopEngine {

    /* renamed from: l */
    public static final double f3013l = Double.MAX_VALUE;

    /* renamed from: c */
    public double f3016c;

    /* renamed from: d */
    public double f3017d;

    /* renamed from: e */
    public double f3018e;

    /* renamed from: f */
    public float f3019f;

    /* renamed from: g */
    public float f3020g;

    /* renamed from: h */
    public float f3021h;

    /* renamed from: i */
    public float f3022i;

    /* renamed from: j */
    public float f3023j;

    /* renamed from: a */
    public double f3014a = 0.5d;

    /* renamed from: b */
    public boolean f3015b = false;

    /* renamed from: k */
    public int f3024k = 0;

    /* renamed from: a */
    public final void m1521a(double d) {
        double d2 = this.f3016c;
        double d3 = this.f3014a;
        int sqrt = (int) ((9.0d / ((Math.sqrt(d2 / this.f3022i) * d) * 4.0d)) + 1.0d);
        double d4 = d / sqrt;
        int i = 0;
        while (i < sqrt) {
            float f = this.f3020g;
            double d5 = this.f3017d;
            float f2 = this.f3021h;
            double d6 = d2;
            double d7 = ((-d2) * (f - d5)) - (f2 * d3);
            float f3 = this.f3022i;
            double d8 = d3;
            double d9 = f2 + (((d7 / f3) * d4) / 2.0d);
            double d10 = ((((-((f + ((d4 * d9) / 2.0d)) - d5)) * d6) - (d9 * d8)) / f3) * d4;
            float f4 = (float) (f2 + d10);
            this.f3021h = f4;
            float f5 = (float) (f + ((f2 + (d10 / 2.0d)) * d4));
            this.f3020g = f5;
            int i2 = this.f3024k;
            if (i2 > 0) {
                if (f5 < 0.0f && (i2 & 1) == 1) {
                    this.f3020g = -f5;
                    this.f3021h = -f4;
                }
                float f6 = this.f3020g;
                if (f6 > 1.0f && (i2 & 2) == 2) {
                    this.f3020g = 2.0f - f6;
                    this.f3021h = -this.f3021h;
                }
            }
            i++;
            d2 = d6;
            d3 = d8;
        }
    }

    /* renamed from: b */
    public void m1522b(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "() ";
        System.out.println(str2 + str);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        return null;
    }

    public float getAcceleration() {
        return ((float) (((-this.f3016c) * (this.f3020g - this.f3017d)) - (this.f3014a * this.f3021h))) / this.f3022i;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        m1521a(f - this.f3019f);
        this.f3019f = f;
        return this.f3020g;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d = this.f3020g - this.f3017d;
        double d2 = this.f3016c;
        double d3 = this.f3021h;
        return Math.sqrt((((d3 * d3) * ((double) this.f3022i)) + ((d2 * d) * d)) / d2) <= ((double) this.f3023j);
    }

    public void springConfig(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i) {
        this.f3017d = f2;
        this.f3014a = f6;
        this.f3015b = false;
        this.f3020g = f;
        this.f3018e = f3;
        this.f3016c = f5;
        this.f3022i = f4;
        this.f3023j = f7;
        this.f3024k = i;
        this.f3019f = 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        return this.f3021h;
    }
}
