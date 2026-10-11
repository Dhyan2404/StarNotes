package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes3.dex */
public class VelocityMatrix {

    /* renamed from: g */
    public static String f3071g = "VelocityMatrix";

    /* renamed from: a */
    public float f3072a;

    /* renamed from: b */
    public float f3073b;

    /* renamed from: c */
    public float f3074c;

    /* renamed from: d */
    public float f3075d;

    /* renamed from: e */
    public float f3076e;

    /* renamed from: f */
    public float f3077f;

    public void applyTransform(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f2 - 0.5f) * 2.0f;
        float f6 = f3 + this.f3074c;
        float f7 = f4 + this.f3075d;
        float f8 = f6 + (this.f3072a * (f - 0.5f) * 2.0f);
        float f9 = f7 + (this.f3073b * f5);
        float radians = (float) Math.toRadians(this.f3077f);
        float radians2 = (float) Math.toRadians(this.f3076e);
        double d = radians;
        double d2 = i2 * f5;
        float sin = f8 + (((float) ((((-i) * r7) * Math.sin(d)) - (Math.cos(d) * d2))) * radians2);
        float cos = f9 + (radians2 * ((float) (((i * r7) * Math.cos(d)) - (d2 * Math.sin(d)))));
        fArr[0] = sin;
        fArr[1] = cos;
    }

    public void clear() {
        this.f3076e = 0.0f;
        this.f3075d = 0.0f;
        this.f3074c = 0.0f;
        this.f3073b = 0.0f;
        this.f3072a = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.f3076e = splineSet.getSlope(f);
            this.f3077f = splineSet.get(f);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f3072a = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.f3073b = splineSet2.getSlope(f);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f3074c = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.f3075d = splineSet2.getSlope(f);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.f3076e = keyCycleOscillator.getSlope(f);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.f3072a = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 != null) {
            this.f3073b = keyCycleOscillator2.getSlope(f);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.f3074c = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 != null) {
            this.f3075d = keyCycleOscillator2.getSlope(f);
        }
    }
}
