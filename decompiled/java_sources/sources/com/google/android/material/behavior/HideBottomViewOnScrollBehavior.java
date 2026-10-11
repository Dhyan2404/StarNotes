package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes6.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int STATE_SCROLLED_DOWN = 1;
    public static final int STATE_SCROLLED_UP = 2;

    /* renamed from: n */
    public static final int f30334n = 225;

    /* renamed from: o */
    public static final int f30335o = 175;

    /* renamed from: p */
    public static final int f30336p = C5139R.attr.motionDurationLong2;

    /* renamed from: q */
    public static final int f30337q = C5139R.attr.motionDurationMedium4;

    /* renamed from: r */
    public static final int f30338r = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: e */
    @NonNull
    public final LinkedHashSet<OnScrollStateChangedListener> f30339e;

    /* renamed from: f */
    public int f30340f;

    /* renamed from: g */
    public int f30341g;

    /* renamed from: h */
    public TimeInterpolator f30342h;

    /* renamed from: i */
    public TimeInterpolator f30343i;

    /* renamed from: j */
    public int f30344j;

    /* renamed from: k */
    @ScrollState
    public int f30345k;

    /* renamed from: l */
    public int f30346l;

    /* renamed from: m */
    @Nullable
    public ViewPropertyAnimator f30347m;

    /* loaded from: classes6.dex */
    public interface OnScrollStateChangedListener {
        void onStateChanged(@NonNull View view, @ScrollState int i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface ScrollState {
    }

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$a */
    /* loaded from: classes6.dex */
    public class C5153a extends AnimatorListenerAdapter {
        public C5153a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f30347m = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f30339e = new LinkedHashSet<>();
        this.f30344j = 0;
        this.f30345k = 2;
        this.f30346l = 0;
    }

    public void addOnScrollStateChangedListener(@NonNull OnScrollStateChangedListener onScrollStateChangedListener) {
        this.f30339e.add(onScrollStateChangedListener);
    }

    /* renamed from: b */
    public final void m23059b(@NonNull V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f30347m = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C5153a());
    }

    /* renamed from: c */
    public final void m23060c(@NonNull V v, @ScrollState int i) {
        this.f30345k = i;
        Iterator<OnScrollStateChangedListener> it2 = this.f30339e.iterator();
        while (it2.hasNext()) {
            it2.next().onStateChanged(v, this.f30345k);
        }
    }

    public void clearOnScrollStateChangedListeners() {
        this.f30339e.clear();
    }

    public boolean isScrolledDown() {
        return this.f30345k == 1;
    }

    public boolean isScrolledUp() {
        return this.f30345k == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        this.f30344j = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        this.f30340f = MotionUtils.resolveThemeDuration(v.getContext(), f30336p, 225);
        this.f30341g = MotionUtils.resolveThemeDuration(v.getContext(), f30337q, 175);
        Context context = v.getContext();
        int i2 = f30338r;
        this.f30342h = MotionUtils.resolveThemeInterpolator(context, i2, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        this.f30343i = MotionUtils.resolveThemeInterpolator(v.getContext(), i2, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        if (i2 > 0) {
            slideDown(v);
        } else if (i2 < 0) {
            slideUp(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        return i == 2;
    }

    public void removeOnScrollStateChangedListener(@NonNull OnScrollStateChangedListener onScrollStateChangedListener) {
        this.f30339e.remove(onScrollStateChangedListener);
    }

    public void setAdditionalHiddenOffsetY(@NonNull V v, @Dimension int i) {
        this.f30346l = i;
        if (this.f30345k == 1) {
            v.setTranslationY(this.f30344j + i);
        }
    }

    public void slideDown(@NonNull V v) {
        slideDown(v, true);
    }

    public void slideUp(@NonNull V v) {
        slideUp(v, true);
    }

    public void slideDown(@NonNull V v, boolean z) {
        if (isScrolledDown()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f30347m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        m23060c(v, 1);
        int i = this.f30344j + this.f30346l;
        if (z) {
            m23059b(v, i, this.f30341g, this.f30343i);
        } else {
            v.setTranslationY(i);
        }
    }

    public void slideUp(@NonNull V v, boolean z) {
        if (isScrolledUp()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f30347m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        m23060c(v, 2);
        if (z) {
            m23059b(v, 0, this.f30340f, this.f30342h);
        } else {
            v.setTranslationY(0);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30339e = new LinkedHashSet<>();
        this.f30344j = 0;
        this.f30345k = 2;
        this.f30346l = 0;
    }
}
