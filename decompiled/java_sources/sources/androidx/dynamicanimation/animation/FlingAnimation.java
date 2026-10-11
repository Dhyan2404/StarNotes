package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.sunia.HTREnginev2.usg;

/* loaded from: classes3.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {

    /* renamed from: o */
    public final C1028a f6881o;

    /* renamed from: androidx.dynamicanimation.animation.FlingAnimation$a */
    /* loaded from: classes3.dex */
    public static final class C1028a implements usg {

        /* renamed from: d */
        public static final float f6882d = -4.2f;

        /* renamed from: e */
        public static final float f6883e = 62.5f;

        /* renamed from: b */
        public float f6885b;

        /* renamed from: a */
        public float f6884a = -4.2f;

        /* renamed from: c */
        public final DynamicAnimation.C1027p f6886c = new DynamicAnimation.C1027p();

        /* renamed from: a */
        public float m4191a() {
            return this.f6884a / (-4.2f);
        }

        /* renamed from: b */
        public void m4192b(float f) {
            this.f6884a = f * (-4.2f);
        }

        /* renamed from: c */
        public void m4193c(float f) {
            this.f6885b = f * 62.5f;
        }

        /* renamed from: d */
        public DynamicAnimation.C1027p m4194d(float f, float f2, long j) {
            float f3 = (float) j;
            this.f6886c.f6880b = (float) (f2 * Math.exp((f3 / 1000.0f) * this.f6884a));
            DynamicAnimation.C1027p c1027p = this.f6886c;
            float f4 = this.f6884a;
            c1027p.f6879a = (float) ((f - (f2 / f4)) + ((f2 / f4) * Math.exp((f4 * f3) / 1000.0f)));
            DynamicAnimation.C1027p c1027p2 = this.f6886c;
            if (isAtEquilibrium(c1027p2.f6879a, c1027p2.f6880b)) {
                this.f6886c.f6880b = 0.0f;
            }
            return this.f6886c;
        }

        @Override // com.sunia.HTREnginev2.usg
        public float getAcceleration(float f, float f2) {
            return f2 * this.f6884a;
        }

        @Override // com.sunia.HTREnginev2.usg
        public boolean isAtEquilibrium(float f, float f2) {
            return Math.abs(f2) < this.f6885b;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        C1028a c1028a = new C1028a();
        this.f6881o = c1028a;
        c1028a.m4193c(m4157d());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: b */
    public float mo4155b(float f, float f2) {
        return this.f6881o.getAcceleration(f, f2);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: e */
    public boolean mo4158e(float f, float f2) {
        return f >= this.f6871g || f <= this.f6872h || this.f6881o.isAtEquilibrium(f, f2);
    }

    public float getFriction() {
        return this.f6881o.m4191a();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: i */
    public void mo4160i(float f) {
        this.f6881o.m4193c(f);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: k */
    public boolean mo4162k(long j) {
        DynamicAnimation.C1027p m4194d = this.f6881o.m4194d(this.f6866b, this.f6865a, j);
        float f = m4194d.f6879a;
        this.f6866b = f;
        float f2 = m4194d.f6880b;
        this.f6865a = f2;
        float f3 = this.f6872h;
        if (f < f3) {
            this.f6866b = f3;
            return true;
        }
        float f4 = this.f6871g;
        if (f <= f4) {
            return mo4158e(f, f2);
        }
        this.f6866b = f4;
        return true;
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        this.f6881o.m4192b(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        C1028a c1028a = new C1028a();
        this.f6881o = c1028a;
        c1028a.m4193c(m4157d());
    }
}
