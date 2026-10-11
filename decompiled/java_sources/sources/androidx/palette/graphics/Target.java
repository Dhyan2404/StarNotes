package androidx.palette.graphics;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class Target {
    public static final Target DARK_MUTED;
    public static final Target DARK_VIBRANT;
    public static final Target LIGHT_MUTED;
    public static final Target LIGHT_VIBRANT;
    public static final Target MUTED;
    public static final Target VIBRANT;

    /* renamed from: e */
    public static final float f8645e = 0.26f;

    /* renamed from: f */
    public static final float f8646f = 0.45f;

    /* renamed from: g */
    public static final float f8647g = 0.55f;

    /* renamed from: h */
    public static final float f8648h = 0.74f;

    /* renamed from: i */
    public static final float f8649i = 0.3f;

    /* renamed from: j */
    public static final float f8650j = 0.5f;

    /* renamed from: k */
    public static final float f8651k = 0.7f;

    /* renamed from: l */
    public static final float f8652l = 0.3f;

    /* renamed from: m */
    public static final float f8653m = 0.4f;

    /* renamed from: n */
    public static final float f8654n = 1.0f;

    /* renamed from: o */
    public static final float f8655o = 0.35f;

    /* renamed from: p */
    public static final float f8656p = 0.24f;

    /* renamed from: q */
    public static final float f8657q = 0.52f;

    /* renamed from: r */
    public static final float f8658r = 0.24f;

    /* renamed from: s */
    public static final int f8659s = 0;

    /* renamed from: t */
    public static final int f8660t = 1;

    /* renamed from: u */
    public static final int f8661u = 2;

    /* renamed from: v */
    public static final int f8662v = 0;

    /* renamed from: w */
    public static final int f8663w = 1;

    /* renamed from: x */
    public static final int f8664x = 2;

    /* renamed from: a */
    public final float[] f8665a;

    /* renamed from: b */
    public final float[] f8666b;

    /* renamed from: c */
    public final float[] f8667c;

    /* renamed from: d */
    public boolean f8668d;

    static {
        Target target = new Target();
        LIGHT_VIBRANT = target;
        m5232c(target);
        m5235f(target);
        Target target2 = new Target();
        VIBRANT = target2;
        m5234e(target2);
        m5235f(target2);
        Target target3 = new Target();
        DARK_VIBRANT = target3;
        m5231b(target3);
        m5235f(target3);
        Target target4 = new Target();
        LIGHT_MUTED = target4;
        m5232c(target4);
        m5233d(target4);
        Target target5 = new Target();
        MUTED = target5;
        m5234e(target5);
        m5233d(target5);
        Target target6 = new Target();
        DARK_MUTED = target6;
        m5231b(target6);
        m5233d(target6);
    }

    public Target() {
        float[] fArr = new float[3];
        this.f8665a = fArr;
        float[] fArr2 = new float[3];
        this.f8666b = fArr2;
        this.f8667c = new float[3];
        this.f8668d = true;
        m5236h(fArr);
        m5236h(fArr2);
        m5238g();
    }

    /* renamed from: b */
    public static void m5231b(Target target) {
        float[] fArr = target.f8666b;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    /* renamed from: c */
    public static void m5232c(Target target) {
        float[] fArr = target.f8666b;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    /* renamed from: d */
    public static void m5233d(Target target) {
        float[] fArr = target.f8665a;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    /* renamed from: e */
    public static void m5234e(Target target) {
        float[] fArr = target.f8666b;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    /* renamed from: f */
    public static void m5235f(Target target) {
        float[] fArr = target.f8665a;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    /* renamed from: h */
    public static void m5236h(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    /* renamed from: a */
    public void m5237a() {
        int length = this.f8667c.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            float f2 = this.f8667c[i];
            if (f2 > 0.0f) {
                f += f2;
            }
        }
        if (f != 0.0f) {
            int length2 = this.f8667c.length;
            for (int i2 = 0; i2 < length2; i2++) {
                float[] fArr = this.f8667c;
                float f3 = fArr[i2];
                if (f3 > 0.0f) {
                    fArr[i2] = f3 / f;
                }
            }
        }
    }

    /* renamed from: g */
    public final void m5238g() {
        float[] fArr = this.f8667c;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }

    public float getLightnessWeight() {
        return this.f8667c[1];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getMaximumLightness() {
        return this.f8666b[2];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getMaximumSaturation() {
        return this.f8665a[2];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getMinimumLightness() {
        return this.f8666b[0];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getMinimumSaturation() {
        return this.f8665a[0];
    }

    public float getPopulationWeight() {
        return this.f8667c[2];
    }

    public float getSaturationWeight() {
        return this.f8667c[0];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getTargetLightness() {
        return this.f8666b[1];
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getTargetSaturation() {
        return this.f8665a[1];
    }

    public boolean isExclusive() {
        return this.f8668d;
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public final Target f8669a;

        public Builder() {
            this.f8669a = new Target();
        }

        @NonNull
        public Target build() {
            return this.f8669a;
        }

        @NonNull
        public Builder setExclusive(boolean z) {
            this.f8669a.f8668d = z;
            return this;
        }

        @NonNull
        public Builder setLightnessWeight(@FloatRange(from = 0.0d) float f) {
            this.f8669a.f8667c[1] = f;
            return this;
        }

        @NonNull
        public Builder setMaximumLightness(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8666b[2] = f;
            return this;
        }

        @NonNull
        public Builder setMaximumSaturation(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8665a[2] = f;
            return this;
        }

        @NonNull
        public Builder setMinimumLightness(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8666b[0] = f;
            return this;
        }

        @NonNull
        public Builder setMinimumSaturation(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8665a[0] = f;
            return this;
        }

        @NonNull
        public Builder setPopulationWeight(@FloatRange(from = 0.0d) float f) {
            this.f8669a.f8667c[2] = f;
            return this;
        }

        @NonNull
        public Builder setSaturationWeight(@FloatRange(from = 0.0d) float f) {
            this.f8669a.f8667c[0] = f;
            return this;
        }

        @NonNull
        public Builder setTargetLightness(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8666b[1] = f;
            return this;
        }

        @NonNull
        public Builder setTargetSaturation(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            this.f8669a.f8665a[1] = f;
            return this;
        }

        public Builder(@NonNull Target target) {
            this.f8669a = new Target(target);
        }
    }

    public Target(@NonNull Target target) {
        float[] fArr = new float[3];
        this.f8665a = fArr;
        float[] fArr2 = new float[3];
        this.f8666b = fArr2;
        float[] fArr3 = new float[3];
        this.f8667c = fArr3;
        this.f8668d = true;
        System.arraycopy(target.f8665a, 0, fArr, 0, fArr.length);
        System.arraycopy(target.f8666b, 0, fArr2, 0, fArr2.length);
        System.arraycopy(target.f8667c, 0, fArr3, 0, fArr3.length);
    }
}
