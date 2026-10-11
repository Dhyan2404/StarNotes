package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes3.dex */
public class StopLogicEngine implements StopEngine {

    /* renamed from: p */
    public static final float f3027p = 1.0E-5f;

    /* renamed from: a */
    public float f3028a;

    /* renamed from: b */
    public float f3029b;

    /* renamed from: c */
    public float f3030c;

    /* renamed from: d */
    public float f3031d;

    /* renamed from: e */
    public float f3032e;

    /* renamed from: f */
    public float f3033f;

    /* renamed from: g */
    public float f3034g;

    /* renamed from: h */
    public float f3035h;

    /* renamed from: i */
    public float f3036i;

    /* renamed from: j */
    public int f3037j;

    /* renamed from: k */
    public String f3038k;

    /* renamed from: m */
    public float f3040m;

    /* renamed from: n */
    public float f3041n;

    /* renamed from: l */
    public boolean f3039l = false;

    /* renamed from: o */
    public boolean f3042o = false;

    /* renamed from: a */
    public final float m1525a(float f) {
        this.f3042o = false;
        float f2 = this.f3031d;
        if (f <= f2) {
            float f3 = this.f3028a;
            return (f3 * f) + ((((this.f3029b - f3) * f) * f) / (f2 * 2.0f));
        }
        int i = this.f3037j;
        if (i == 1) {
            return this.f3034g;
        }
        float f4 = f - f2;
        float f5 = this.f3032e;
        if (f4 < f5) {
            float f6 = this.f3034g;
            float f7 = this.f3029b;
            return f6 + (f7 * f4) + ((((this.f3030c - f7) * f4) * f4) / (f5 * 2.0f));
        }
        if (i == 2) {
            return this.f3035h;
        }
        float f8 = f4 - f5;
        float f9 = this.f3033f;
        if (f8 > f9) {
            this.f3042o = true;
            return this.f3036i;
        }
        float f10 = this.f3035h;
        float f11 = this.f3030c;
        return (f10 + (f11 * f8)) - (((f11 * f8) * f8) / (f9 * 2.0f));
    }

    /* renamed from: b */
    public final void m1526b(float f, float f2, float f3, float f4, float f5) {
        this.f3042o = false;
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.f3028a = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f3038k = "backward accelerate, decelerate";
                this.f3037j = 2;
                this.f3028a = f;
                this.f3029b = sqrt;
                this.f3030c = 0.0f;
                float f8 = (sqrt - f) / f3;
                this.f3031d = f8;
                this.f3032e = sqrt / f3;
                this.f3034g = ((f + sqrt) * f8) / 2.0f;
                this.f3035h = f2;
                this.f3036i = f2;
                return;
            }
            this.f3038k = "backward accelerate cruse decelerate";
            this.f3037j = 3;
            this.f3028a = f;
            this.f3029b = f4;
            this.f3030c = f4;
            float f9 = (f4 - f) / f3;
            this.f3031d = f9;
            float f10 = f4 / f3;
            this.f3033f = f10;
            float f11 = ((f + f4) * f9) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.f3032e = ((f2 - f11) - f12) / f4;
            this.f3034g = f11;
            this.f3035h = f2 - f12;
            this.f3036i = f2;
            return;
        }
        if (f7 >= f2) {
            this.f3038k = "hard stop";
            this.f3037j = 1;
            this.f3028a = f;
            this.f3029b = 0.0f;
            this.f3034g = f2;
            this.f3031d = (2.0f * f2) / f;
            return;
        }
        float f13 = f2 - f7;
        float f14 = f13 / f;
        if (f14 + f6 < f5) {
            this.f3038k = "cruse decelerate";
            this.f3037j = 2;
            this.f3028a = f;
            this.f3029b = f;
            this.f3030c = 0.0f;
            this.f3034g = f13;
            this.f3035h = f2;
            this.f3031d = f14;
            this.f3032e = f6;
            return;
        }
        float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f * f) / 2.0f));
        float f15 = (sqrt2 - f) / f3;
        this.f3031d = f15;
        float f16 = sqrt2 / f3;
        this.f3032e = f16;
        if (sqrt2 < f4) {
            this.f3038k = "accelerate decelerate";
            this.f3037j = 2;
            this.f3028a = f;
            this.f3029b = sqrt2;
            this.f3030c = 0.0f;
            this.f3031d = f15;
            this.f3032e = f16;
            this.f3034g = ((f + sqrt2) * f15) / 2.0f;
            this.f3035h = f2;
            return;
        }
        this.f3038k = "accelerate cruse decelerate";
        this.f3037j = 3;
        this.f3028a = f;
        this.f3029b = f4;
        this.f3030c = f4;
        float f17 = (f4 - f) / f3;
        this.f3031d = f17;
        float f18 = f4 / f3;
        this.f3033f = f18;
        float f19 = ((f + f4) * f17) / 2.0f;
        float f20 = (f18 * f4) / 2.0f;
        this.f3032e = ((f2 - f19) - f20) / f4;
        this.f3034g = f19;
        this.f3035h = f2 - f20;
        this.f3036i = f2;
    }

    public void config(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f3042o = false;
        this.f3040m = f;
        boolean z = f > f2;
        this.f3039l = z;
        if (z) {
            m1526b(-f3, f - f2, f5, f6, f4);
        } else {
            m1526b(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        String str2 = str + " ===== " + this.f3038k + "\n";
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(str);
        sb.append(this.f3039l ? "backwards" : "forward ");
        sb.append(" time = ");
        sb.append(f);
        sb.append("  stages ");
        sb.append(this.f3037j);
        sb.append("\n");
        String str3 = sb.toString() + str + " dur " + this.f3031d + " vel " + this.f3028a + " pos " + this.f3034g + "\n";
        if (this.f3037j > 1) {
            str3 = str3 + str + " dur " + this.f3032e + " vel " + this.f3029b + " pos " + this.f3035h + "\n";
        }
        if (this.f3037j > 2) {
            str3 = str3 + str + " dur " + this.f3033f + " vel " + this.f3030c + " pos " + this.f3036i + "\n";
        }
        float f2 = this.f3031d;
        if (f <= f2) {
            return str3 + str + "stage 0\n";
        }
        int i = this.f3037j;
        if (i == 1) {
            return str3 + str + "end stage 0\n";
        }
        float f3 = f - f2;
        float f4 = this.f3032e;
        if (f3 < f4) {
            return str3 + str + " stage 1\n";
        }
        if (i == 2) {
            return str3 + str + "end stage 1\n";
        }
        if (f3 - f4 < this.f3033f) {
            return str3 + str + " stage 2\n";
        }
        return str3 + str + " end stage 2\n";
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        float m1525a = m1525a(f);
        this.f3041n = f;
        boolean z = this.f3039l;
        float f2 = this.f3040m;
        return z ? f2 - m1525a : f2 + m1525a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        float f2;
        float f3;
        float f4 = this.f3031d;
        if (f <= f4) {
            f2 = this.f3028a;
            f3 = this.f3029b;
        } else {
            int i = this.f3037j;
            if (i == 1) {
                return 0.0f;
            }
            f -= f4;
            f4 = this.f3032e;
            if (f >= f4) {
                if (i == 2) {
                    return this.f3035h;
                }
                float f5 = f - f4;
                float f6 = this.f3033f;
                if (f5 < f6) {
                    float f7 = this.f3030c;
                    return f7 - ((f5 * f7) / f6);
                }
                return this.f3036i;
            }
            f2 = this.f3029b;
            f3 = this.f3030c;
        }
        return f2 + (((f3 - f2) * f) / f4);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return getVelocity() < 1.0E-5f && Math.abs(this.f3036i - this.f3041n) < 1.0E-5f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return this.f3039l ? -getVelocity(this.f3041n) : getVelocity(this.f3041n);
    }
}
