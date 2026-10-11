package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.progressindicator.AnimatorDurationScaleProvider;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class mif extends Drawable implements Animatable2Compat {

    /* renamed from: s */
    public static final boolean f77630s = false;

    /* renamed from: t */
    public static final int f77631t = 500;

    /* renamed from: u */
    public static final Property<mif, Float> f77632u = new C14100c(Float.class, "growFraction");

    /* renamed from: e */
    public final Context f77633e;

    /* renamed from: f */
    public final BaseProgressIndicatorSpec f77634f;

    /* renamed from: h */
    public ValueAnimator f77636h;

    /* renamed from: i */
    public ValueAnimator f77637i;

    /* renamed from: j */
    public boolean f77638j;

    /* renamed from: k */
    public boolean f77639k;

    /* renamed from: l */
    public float f77640l;

    /* renamed from: m */
    public List<Animatable2Compat.AnimationCallback> f77641m;

    /* renamed from: n */
    public Animatable2Compat.AnimationCallback f77642n;

    /* renamed from: o */
    public boolean f77643o;

    /* renamed from: p */
    public float f77644p;

    /* renamed from: r */
    @IntRange(from = 0, m281to = 255)
    public int f77646r;

    /* renamed from: q */
    public final Paint f77645q = new Paint();

    /* renamed from: g */
    public AnimatorDurationScaleProvider f77635g = new AnimatorDurationScaleProvider();

    /* renamed from: com.sunia.HTREnginev2.mif$a */
    /* loaded from: classes6.dex */
    public class C14098a extends AnimatorListenerAdapter {
        public C14098a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            mif.this.m55631f();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.mif$b */
    /* loaded from: classes6.dex */
    public class C14099b extends AnimatorListenerAdapter {
        public C14099b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            mif.super.setVisible(false, false);
            mif.this.m55630e();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.mif$c */
    /* loaded from: classes6.dex */
    public class C14100c extends Property<mif, Float> {
        public C14100c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(mif mifVar) {
            return Float.valueOf(mifVar.m55633h());
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(mif mifVar, Float f) {
            mifVar.m55636k(f.floatValue());
        }
    }

    public mif(@NonNull Context context, @NonNull BaseProgressIndicatorSpec baseProgressIndicatorSpec) {
        this.f77633e = context;
        this.f77634f = baseProgressIndicatorSpec;
        setAlpha(255);
    }

    public void clearAnimationCallbacks() {
        this.f77641m.clear();
        this.f77641m = null;
    }

    /* renamed from: d */
    public final void m55629d(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z = this.f77643o;
        this.f77643o = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.cancel();
        }
        this.f77643o = z;
    }

    /* renamed from: e */
    public final void m55630e() {
        Animatable2Compat.AnimationCallback animationCallback = this.f77642n;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f77641m;
        if (list == null || this.f77643o) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationEnd(this);
        }
    }

    /* renamed from: f */
    public final void m55631f() {
        Animatable2Compat.AnimationCallback animationCallback = this.f77642n;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f77641m;
        if (list == null || this.f77643o) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationStart(this);
        }
    }

    /* renamed from: g */
    public final void m55632g(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z = this.f77643o;
        this.f77643o = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f77643o = z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f77646r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public float m55633h() {
        if (this.f77634f.isShowAnimationEnabled() || this.f77634f.isHideAnimationEnabled()) {
            return (this.f77639k || this.f77638j) ? this.f77640l : this.f77644p;
        }
        return 1.0f;
    }

    public boolean hideNow() {
        return setVisible(false, false, false);
    }

    @NonNull
    /* renamed from: i */
    public ValueAnimator m55634i() {
        return this.f77637i;
    }

    public boolean isHiding() {
        ValueAnimator valueAnimator = this.f77637i;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f77639k;
    }

    public boolean isRunning() {
        return isShowing() || isHiding();
    }

    public boolean isShowing() {
        ValueAnimator valueAnimator = this.f77636h;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f77638j;
    }

    /* renamed from: j */
    public final void m55635j() {
        if (this.f77636h == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f77632u, 0.0f, 1.0f);
            this.f77636h = ofFloat;
            ofFloat.setDuration(500L);
            this.f77636h.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            m55641p(this.f77636h);
        }
        if (this.f77637i == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f77632u, 1.0f, 0.0f);
            this.f77637i = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f77637i.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            m55637l(this.f77637i);
        }
    }

    /* renamed from: k */
    public void m55636k(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        if (this.f77644p != f) {
            this.f77644p = f;
            invalidateSelf();
        }
    }

    /* renamed from: l */
    public final void m55637l(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f77637i;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f77637i = valueAnimator;
        valueAnimator.addListener(new C14099b());
    }

    /* renamed from: m */
    public void m55638m(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f77642n = animationCallback;
    }

    @VisibleForTesting
    /* renamed from: n */
    public void m55639n(boolean z, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f77639k = z;
        this.f77640l = f;
    }

    @VisibleForTesting
    /* renamed from: o */
    public void m55640o(boolean z, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f77638j = z;
        this.f77640l = f;
    }

    /* renamed from: p */
    public final void m55641p(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f77636h;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f77636h = valueAnimator;
        valueAnimator.addListener(new C14098a());
    }

    /* renamed from: q */
    public boolean mo24449q(boolean z, boolean z2, boolean z3) {
        m55635j();
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator = z ? this.f77636h : this.f77637i;
        ValueAnimator valueAnimator2 = z ? this.f77637i : this.f77636h;
        if (!z3) {
            if (valueAnimator2.isRunning()) {
                m55629d(valueAnimator2);
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                m55632g(valueAnimator);
            }
            return super.setVisible(z, false);
        }
        if (valueAnimator.isRunning()) {
            return false;
        }
        boolean z4 = !z || super.setVisible(z, false);
        if (!(z ? this.f77634f.isShowAnimationEnabled() : this.f77634f.isHideAnimationEnabled())) {
            m55632g(valueAnimator);
            return z4;
        }
        if (z2 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z4;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f77641m == null) {
            this.f77641m = new ArrayList();
        }
        if (this.f77641m.contains(animationCallback)) {
            return;
        }
        this.f77641m.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m281to = 255) int i) {
        this.f77646r = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f77645q.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return setVisible(z, z2, true);
    }

    public void start() {
        mo24449q(true, true, false);
    }

    public void stop() {
        mo24449q(false, true, false);
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f77641m;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.f77641m.remove(animationCallback);
        if (!this.f77641m.isEmpty()) {
            return true;
        }
        this.f77641m = null;
        return true;
    }

    public boolean setVisible(boolean z, boolean z2, boolean z3) {
        return mo24449q(z, z2, z3 && this.f77635g.getSystemAnimatorDurationScale(this.f77633e.getContentResolver()) > 0.0f);
    }
}
