package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import androidx.annotation.MainThread;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* loaded from: classes3.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {

    /* renamed from: r */
    public static final float f6890r = Float.MAX_VALUE;

    /* renamed from: o */
    public SpringForce f6891o;

    /* renamed from: p */
    public float f6892p;

    /* renamed from: q */
    public boolean f6893q;

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.f6891o = null;
        this.f6892p = Float.MAX_VALUE;
        this.f6893q = false;
    }

    public void animateToFinalPosition(float f) {
        if (isRunning()) {
            this.f6892p = f;
            return;
        }
        if (this.f6891o == null) {
            this.f6891o = new SpringForce(f);
        }
        this.f6891o.setFinalPosition(f);
        start();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: b */
    public float mo4155b(float f, float f2) {
        return this.f6891o.getAcceleration(f, f2);
    }

    public boolean canSkipToEnd() {
        return this.f6891o.f6897b > 0.0d;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void cancel() {
        super.cancel();
        float f = this.f6892p;
        if (f != Float.MAX_VALUE) {
            SpringForce springForce = this.f6891o;
            if (springForce == null) {
                this.f6891o = new SpringForce(f);
            } else {
                springForce.setFinalPosition(f);
            }
            this.f6892p = Float.MAX_VALUE;
        }
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: e */
    public boolean mo4158e(float f, float f2) {
        return this.f6891o.isAtEquilibrium(f, f2);
    }

    public SpringForce getSpring() {
        return this.f6891o;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: i */
    public void mo4160i(float f) {
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /* renamed from: k */
    public boolean mo4162k(long j) {
        if (this.f6893q) {
            float f = this.f6892p;
            if (f != Float.MAX_VALUE) {
                this.f6891o.setFinalPosition(f);
                this.f6892p = Float.MAX_VALUE;
            }
            this.f6866b = this.f6891o.getFinalPosition();
            this.f6865a = 0.0f;
            this.f6893q = false;
            return true;
        }
        if (this.f6892p != Float.MAX_VALUE) {
            long j2 = j / 2;
            DynamicAnimation.C1027p m4198c = this.f6891o.m4198c(this.f6866b, this.f6865a, j2);
            this.f6891o.setFinalPosition(this.f6892p);
            this.f6892p = Float.MAX_VALUE;
            DynamicAnimation.C1027p m4198c2 = this.f6891o.m4198c(m4198c.f6879a, m4198c.f6880b, j2);
            this.f6866b = m4198c2.f6879a;
            this.f6865a = m4198c2.f6880b;
        } else {
            DynamicAnimation.C1027p m4198c3 = this.f6891o.m4198c(this.f6866b, this.f6865a, j);
            this.f6866b = m4198c3.f6879a;
            this.f6865a = m4198c3.f6880b;
        }
        float max = Math.max(this.f6866b, this.f6872h);
        this.f6866b = max;
        float min = Math.min(max, this.f6871g);
        this.f6866b = min;
        if (!mo4158e(min, this.f6865a)) {
            return false;
        }
        this.f6866b = this.f6891o.getFinalPosition();
        this.f6865a = 0.0f;
        return true;
    }

    /* renamed from: l */
    public final void m4195l() {
        SpringForce springForce = this.f6891o;
        if (springForce == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double finalPosition = springForce.getFinalPosition();
        if (finalPosition > this.f6871g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (finalPosition < this.f6872h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    public SpringAnimation setSpring(SpringForce springForce) {
        this.f6891o = springForce;
        return this;
    }

    public void skipToEnd() {
        if (!canSkipToEnd()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f6870f) {
            this.f6893q = true;
        }
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void start() {
        m4195l();
        this.f6891o.m4197b(m4157d());
        super.start();
    }

    public SpringAnimation(FloatValueHolder floatValueHolder, float f) {
        super(floatValueHolder);
        this.f6891o = null;
        this.f6892p = Float.MAX_VALUE;
        this.f6893q = false;
        this.f6891o = new SpringForce(f);
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.f6891o = null;
        this.f6892p = Float.MAX_VALUE;
        this.f6893q = false;
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat, float f) {
        super(k, floatPropertyCompat);
        this.f6891o = null;
        this.f6892p = Float.MAX_VALUE;
        this.f6893q = false;
        this.f6891o = new SpringForce(f);
    }
}
