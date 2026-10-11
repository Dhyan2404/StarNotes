package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.sunia.HTREnginev2.usg;

/* loaded from: classes3.dex */
public final class SpringForce implements usg {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;

    /* renamed from: k */
    public static final double f6894k = 62.5d;

    /* renamed from: l */
    public static final double f6895l = Double.MAX_VALUE;

    /* renamed from: a */
    public double f6896a;

    /* renamed from: b */
    public double f6897b;

    /* renamed from: c */
    public boolean f6898c;

    /* renamed from: d */
    public double f6899d;

    /* renamed from: e */
    public double f6900e;

    /* renamed from: f */
    public double f6901f;

    /* renamed from: g */
    public double f6902g;

    /* renamed from: h */
    public double f6903h;

    /* renamed from: i */
    public double f6904i;

    /* renamed from: j */
    public final DynamicAnimation.C1027p f6905j;

    public SpringForce() {
        this.f6896a = Math.sqrt(1500.0d);
        this.f6897b = 0.5d;
        this.f6898c = false;
        this.f6904i = Double.MAX_VALUE;
        this.f6905j = new DynamicAnimation.C1027p();
    }

    /* renamed from: a */
    public final void m4196a() {
        if (this.f6898c) {
            return;
        }
        if (this.f6904i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.f6897b;
        if (d > 1.0d) {
            double d2 = this.f6896a;
            this.f6901f = ((-d) * d2) + (d2 * Math.sqrt((d * d) - 1.0d));
            double d3 = this.f6897b;
            double d4 = this.f6896a;
            this.f6902g = ((-d3) * d4) - (d4 * Math.sqrt((d3 * d3) - 1.0d));
        } else if (d >= 0.0d && d < 1.0d) {
            this.f6903h = this.f6896a * Math.sqrt(1.0d - (d * d));
        }
        this.f6898c = true;
    }

    /* renamed from: b */
    public void m4197b(double d) {
        double abs = Math.abs(d);
        this.f6899d = abs;
        this.f6900e = abs * 62.5d;
    }

    /* renamed from: c */
    public DynamicAnimation.C1027p m4198c(double d, double d2, long j) {
        double cos;
        double d3;
        m4196a();
        double d4 = j / 1000.0d;
        double d5 = d - this.f6904i;
        double d6 = this.f6897b;
        if (d6 > 1.0d) {
            double d7 = this.f6902g;
            double d8 = this.f6901f;
            double d9 = d5 - (((d7 * d5) - d2) / (d7 - d8));
            double d10 = ((d5 * d7) - d2) / (d7 - d8);
            d3 = (Math.pow(2.718281828459045d, d7 * d4) * d9) + (Math.pow(2.718281828459045d, this.f6901f * d4) * d10);
            double d11 = this.f6902g;
            double pow = d9 * d11 * Math.pow(2.718281828459045d, d11 * d4);
            double d12 = this.f6901f;
            cos = pow + (d10 * d12 * Math.pow(2.718281828459045d, d12 * d4));
        } else if (d6 == 1.0d) {
            double d13 = this.f6896a;
            double d14 = d2 + (d13 * d5);
            double d15 = d5 + (d14 * d4);
            d3 = Math.pow(2.718281828459045d, (-d13) * d4) * d15;
            double pow2 = d15 * Math.pow(2.718281828459045d, (-this.f6896a) * d4);
            double d16 = this.f6896a;
            cos = (d14 * Math.pow(2.718281828459045d, (-d16) * d4)) + (pow2 * (-d16));
        } else {
            double d17 = 1.0d / this.f6903h;
            double d18 = this.f6896a;
            double d19 = d17 * ((d6 * d18 * d5) + d2);
            double pow3 = Math.pow(2.718281828459045d, (-d6) * d18 * d4) * ((Math.cos(this.f6903h * d4) * d5) + (Math.sin(this.f6903h * d4) * d19));
            double d20 = this.f6896a;
            double d21 = this.f6897b;
            double d22 = (-d20) * pow3 * d21;
            double pow4 = Math.pow(2.718281828459045d, (-d21) * d20 * d4);
            double d23 = this.f6903h;
            double sin = (-d23) * d5 * Math.sin(d23 * d4);
            double d24 = this.f6903h;
            cos = d22 + (pow4 * (sin + (d19 * d24 * Math.cos(d24 * d4))));
            d3 = pow3;
        }
        DynamicAnimation.C1027p c1027p = this.f6905j;
        c1027p.f6879a = (float) (d3 + this.f6904i);
        c1027p.f6880b = (float) cos;
        return c1027p;
    }

    @Override // com.sunia.HTREnginev2.usg
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float getAcceleration(float f, float f2) {
        float finalPosition = f - getFinalPosition();
        double d = this.f6896a;
        return (float) (((-(d * d)) * finalPosition) - (((d * 2.0d) * this.f6897b) * f2));
    }

    public float getDampingRatio() {
        return (float) this.f6897b;
    }

    public float getFinalPosition() {
        return (float) this.f6904i;
    }

    public float getStiffness() {
        double d = this.f6896a;
        return (float) (d * d);
    }

    @Override // com.sunia.HTREnginev2.usg
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAtEquilibrium(float f, float f2) {
        return ((double) Math.abs(f2)) < this.f6900e && ((double) Math.abs(f - getFinalPosition())) < this.f6899d;
    }

    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f6897b = f;
        this.f6898c = false;
        return this;
    }

    public SpringForce setFinalPosition(float f) {
        this.f6904i = f;
        return this;
    }

    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f6896a = Math.sqrt(f);
        this.f6898c = false;
        return this;
    }

    public SpringForce(float f) {
        this.f6896a = Math.sqrt(1500.0d);
        this.f6897b = 0.5d;
        this.f6898c = false;
        this.f6904i = Double.MAX_VALUE;
        this.f6905j = new DynamicAnimation.C1027p();
        this.f6904i = f;
    }
}
