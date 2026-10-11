package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.progressindicator.DrawingDelegate;

/* renamed from: com.google.android.material.progressindicator.b */
/* loaded from: classes6.dex */
public final class C5351b extends AbstractC5352c<ObjectAnimator> {

    /* renamed from: k */
    public static final int f31943k = 4;

    /* renamed from: l */
    public static final int f31944l = 5400;

    /* renamed from: m */
    public static final int f31945m = 667;

    /* renamed from: n */
    public static final int f31946n = 667;

    /* renamed from: o */
    public static final int f31947o = 333;

    /* renamed from: p */
    public static final int f31948p = 333;

    /* renamed from: t */
    public static final int f31952t = -20;

    /* renamed from: u */
    public static final int f31953u = 250;

    /* renamed from: v */
    public static final int f31954v = 1520;

    /* renamed from: c */
    public ObjectAnimator f31957c;

    /* renamed from: d */
    public ObjectAnimator f31958d;

    /* renamed from: e */
    public final FastOutSlowInInterpolator f31959e;

    /* renamed from: f */
    public final BaseProgressIndicatorSpec f31960f;

    /* renamed from: g */
    public int f31961g;

    /* renamed from: h */
    public float f31962h;

    /* renamed from: i */
    public float f31963i;

    /* renamed from: j */
    public Animatable2Compat.AnimationCallback f31964j;

    /* renamed from: q */
    public static final int[] f31949q = {0, 1350, 2700, 4050};

    /* renamed from: r */
    public static final int[] f31950r = {667, 2017, 3367, 4717};

    /* renamed from: s */
    public static final int[] f31951s = {1000, 2350, 3700, 5050};

    /* renamed from: w */
    public static final Property<C5351b, Float> f31955w = new c(Float.class, "animationFraction");

    /* renamed from: x */
    public static final Property<C5351b, Float> f31956x = new d(Float.class, "completeEndFraction");

    /* renamed from: com.google.android.material.progressindicator.b$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C5351b c5351b = C5351b.this;
            c5351b.f31961g = (c5351b.f31961g + 4) % C5351b.this.f31960f.indicatorColors.length;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.b$b */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            C5351b.this.mo24483a();
            C5351b c5351b = C5351b.this;
            Animatable2Compat.AnimationCallback animationCallback = c5351b.f31964j;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(c5351b.f31967a);
            }
        }
    }

    /* renamed from: com.google.android.material.progressindicator.b$c */
    /* loaded from: classes6.dex */
    public class c extends Property<C5351b, Float> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(C5351b c5351b) {
            return Float.valueOf(c5351b.m24491q());
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C5351b c5351b, Float f) {
            c5351b.mo24488h(f.floatValue());
        }
    }

    /* renamed from: com.google.android.material.progressindicator.b$d */
    /* loaded from: classes6.dex */
    public class d extends Property<C5351b, Float> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(C5351b c5351b) {
            return Float.valueOf(c5351b.m24492r());
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C5351b c5351b, Float f) {
            c5351b.m24495u(f.floatValue());
        }
    }

    public C5351b(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f31961g = 0;
        this.f31964j = null;
        this.f31960f = circularProgressIndicatorSpec;
        this.f31959e = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: a */
    public void mo24483a() {
        ObjectAnimator objectAnimator = this.f31957c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: c */
    public void mo24484c() {
        mo24487g();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: d */
    public void mo24485d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f31964j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: f */
    public void mo24486f() {
        ObjectAnimator objectAnimator = this.f31958d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f31967a.isVisible()) {
            this.f31958d.start();
        } else {
            mo24483a();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: g */
    public void mo24487g() {
        this.f31961g = 0;
        this.f31968b.get(0).f31931c = this.f31960f.indicatorColors[0];
        this.f31963i = 0.0f;
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: h */
    public void mo24488h(float f) {
        this.f31962h = f;
        int i = (int) (f * 5400.0f);
        m24496v(i);
        m24494t(i);
        this.f31967a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: i */
    public void mo24489i() {
        m24493s();
        mo24487g();
        this.f31957c.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: j */
    public void mo24490j() {
        this.f31964j = null;
    }

    /* renamed from: q */
    public final float m24491q() {
        return this.f31962h;
    }

    /* renamed from: r */
    public final float m24492r() {
        return this.f31963i;
    }

    /* renamed from: s */
    public final void m24493s() {
        if (this.f31957c == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f31955w, 0.0f, 1.0f);
            this.f31957c = ofFloat;
            ofFloat.setDuration(5400L);
            this.f31957c.setInterpolator(null);
            this.f31957c.setRepeatCount(-1);
            this.f31957c.addListener(new a());
        }
        if (this.f31958d == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f31956x, 0.0f, 1.0f);
            this.f31958d = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f31958d.setInterpolator(this.f31959e);
            this.f31958d.addListener(new b());
        }
    }

    /* renamed from: t */
    public final void m24494t(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            float m24501b = m24501b(i, f31951s[i2], 333);
            if (m24501b >= 0.0f && m24501b <= 1.0f) {
                int i3 = i2 + this.f31961g;
                int[] iArr = this.f31960f.indicatorColors;
                int length = i3 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int i4 = iArr[length];
                int i5 = iArr[length2];
                this.f31968b.get(0).f31931c = ArgbEvaluatorCompat.getInstance().evaluate(this.f31959e.getInterpolation(m24501b), Integer.valueOf(i4), Integer.valueOf(i5)).intValue();
                return;
            }
        }
    }

    /* renamed from: u */
    public final void m24495u(float f) {
        this.f31963i = f;
    }

    /* renamed from: v */
    public final void m24496v(int i) {
        DrawingDelegate.ActiveIndicator activeIndicator = this.f31968b.get(0);
        float f = this.f31962h;
        activeIndicator.f31929a = (f * 1520.0f) - 20.0f;
        activeIndicator.f31930b = f * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            activeIndicator.f31930b += this.f31959e.getInterpolation(m24501b(i, f31949q[i2], 667)) * 250.0f;
            activeIndicator.f31929a += this.f31959e.getInterpolation(m24501b(i, f31950r[i2], 667)) * 250.0f;
        }
        float f2 = activeIndicator.f31929a;
        float f3 = activeIndicator.f31930b;
        activeIndicator.f31929a = (f2 + ((f3 - f2) * this.f31963i)) / 360.0f;
        activeIndicator.f31930b = f3 / 360.0f;
    }
}
