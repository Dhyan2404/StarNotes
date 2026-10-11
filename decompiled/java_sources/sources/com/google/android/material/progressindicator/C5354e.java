package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.DrawingDelegate;

/* renamed from: com.google.android.material.progressindicator.e */
/* loaded from: classes6.dex */
public final class C5354e extends AbstractC5352c<ObjectAnimator> {

    /* renamed from: i */
    public static final int f31974i = 667;

    /* renamed from: j */
    public static final int f31975j = 333;

    /* renamed from: k */
    public static final Property<C5354e, Float> f31976k = new b(Float.class, "animationFraction");

    /* renamed from: c */
    public ObjectAnimator f31977c;

    /* renamed from: d */
    public FastOutSlowInInterpolator f31978d;

    /* renamed from: e */
    public final BaseProgressIndicatorSpec f31979e;

    /* renamed from: f */
    public int f31980f;

    /* renamed from: g */
    public boolean f31981g;

    /* renamed from: h */
    public float f31982h;

    /* renamed from: com.google.android.material.progressindicator.e$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C5354e c5354e = C5354e.this;
            c5354e.f31980f = (c5354e.f31980f + 1) % C5354e.this.f31979e.indicatorColors.length;
            C5354e.this.f31981g = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.e$b */
    /* loaded from: classes6.dex */
    public class b extends Property<C5354e, Float> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(C5354e c5354e) {
            return Float.valueOf(c5354e.m24511p());
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C5354e c5354e, Float f) {
            c5354e.mo24488h(f.floatValue());
        }
    }

    public C5354e(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f31980f = 1;
        this.f31979e = linearProgressIndicatorSpec;
        this.f31978d = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: a */
    public void mo24483a() {
        ObjectAnimator objectAnimator = this.f31977c;
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
    public void mo24485d(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: f */
    public void mo24486f() {
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: g */
    public void mo24487g() {
        this.f31981g = true;
        this.f31980f = 1;
        for (DrawingDelegate.ActiveIndicator activeIndicator : this.f31968b) {
            BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f31979e;
            activeIndicator.f31931c = baseProgressIndicatorSpec.indicatorColors[0];
            activeIndicator.f31932d = baseProgressIndicatorSpec.indicatorTrackGapSize / 2;
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: h */
    public void mo24488h(float f) {
        this.f31982h = f;
        m24514s((int) (f * 333.0f));
        m24513r();
        this.f31967a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: i */
    public void mo24489i() {
        m24512q();
        mo24487g();
        this.f31977c.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: j */
    public void mo24490j() {
    }

    /* renamed from: p */
    public final float m24511p() {
        return this.f31982h;
    }

    /* renamed from: q */
    public final void m24512q() {
        if (this.f31977c == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f31976k, 0.0f, 1.0f);
            this.f31977c = ofFloat;
            ofFloat.setDuration(333L);
            this.f31977c.setInterpolator(null);
            this.f31977c.setRepeatCount(-1);
            this.f31977c.addListener(new a());
        }
    }

    /* renamed from: r */
    public final void m24513r() {
        if (!this.f31981g || this.f31968b.get(1).f31930b >= 1.0f) {
            return;
        }
        this.f31968b.get(2).f31931c = this.f31968b.get(1).f31931c;
        this.f31968b.get(1).f31931c = this.f31968b.get(0).f31931c;
        this.f31968b.get(0).f31931c = this.f31979e.indicatorColors[this.f31980f];
        this.f31981g = false;
    }

    /* renamed from: s */
    public final void m24514s(int i) {
        this.f31968b.get(0).f31929a = 0.0f;
        float m24501b = m24501b(i, 0, 667);
        DrawingDelegate.ActiveIndicator activeIndicator = this.f31968b.get(0);
        DrawingDelegate.ActiveIndicator activeIndicator2 = this.f31968b.get(1);
        float interpolation = this.f31978d.getInterpolation(m24501b);
        activeIndicator2.f31929a = interpolation;
        activeIndicator.f31930b = interpolation;
        DrawingDelegate.ActiveIndicator activeIndicator3 = this.f31968b.get(1);
        DrawingDelegate.ActiveIndicator activeIndicator4 = this.f31968b.get(2);
        float interpolation2 = this.f31978d.getInterpolation(m24501b + 0.49925038f);
        activeIndicator4.f31929a = interpolation2;
        activeIndicator3.f31930b = interpolation2;
        this.f31968b.get(2).f31930b = 1.0f;
    }
}
