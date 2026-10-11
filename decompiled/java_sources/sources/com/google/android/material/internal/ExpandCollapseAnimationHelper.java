package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ExpandCollapseAnimationHelper;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ExpandCollapseAnimationHelper {

    /* renamed from: a */
    public final View f31552a;

    /* renamed from: b */
    public final View f31553b;

    /* renamed from: c */
    public final List<AnimatorListenerAdapter> f31554c = new ArrayList();

    /* renamed from: d */
    public final List<View> f31555d = new ArrayList();

    /* renamed from: e */
    @Nullable
    public ValueAnimator.AnimatorUpdateListener f31556e;

    /* renamed from: f */
    public long f31557f;

    /* renamed from: g */
    public int f31558g;

    /* renamed from: h */
    public int f31559h;

    /* renamed from: com.google.android.material.internal.ExpandCollapseAnimationHelper$a */
    /* loaded from: classes6.dex */
    public class C5292a extends AnimatorListenerAdapter {
        public C5292a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ExpandCollapseAnimationHelper.this.f31553b.setVisibility(0);
        }
    }

    /* renamed from: com.google.android.material.internal.ExpandCollapseAnimationHelper$b */
    /* loaded from: classes6.dex */
    public class C5293b extends AnimatorListenerAdapter {
        public C5293b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandCollapseAnimationHelper.this.f31553b.setVisibility(8);
        }
    }

    public ExpandCollapseAnimationHelper(@NonNull View view, @NonNull View view2) {
        this.f31552a = view;
        this.f31553b = view2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m24233h(Rect rect, ValueAnimator valueAnimator) {
        ViewUtils.setBoundsFromRect(this.f31553b, rect);
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper addEndAnchoredViews(@NonNull View... viewArr) {
        Collections.addAll(this.f31555d, viewArr);
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper addListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f31554c.add(animatorListenerAdapter);
        return this;
    }

    /* renamed from: c */
    public final void m24234c(Animator animator, List<AnimatorListenerAdapter> list) {
        Iterator<AnimatorListenerAdapter> it2 = list.iterator();
        while (it2.hasNext()) {
            animator.addListener(it2.next());
        }
    }

    /* renamed from: d */
    public final AnimatorSet m24235d(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m24237f(z), m24238g(z), m24236e(z));
        return animatorSet;
    }

    /* renamed from: e */
    public final Animator m24236e(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat((this.f31553b.getLeft() - this.f31552a.getLeft()) + (this.f31552a.getRight() - this.f31553b.getRight()), 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(this.f31555d));
        ofFloat.setDuration(this.f31557f);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return ofFloat;
    }

    /* renamed from: f */
    public final Animator m24237f(boolean z) {
        Rect calculateRectFromBounds = ViewUtils.calculateRectFromBounds(this.f31552a, this.f31558g);
        Rect calculateRectFromBounds2 = ViewUtils.calculateRectFromBounds(this.f31553b, this.f31559h);
        final Rect rect = new Rect(calculateRectFromBounds);
        ValueAnimator ofObject = ValueAnimator.ofObject(new RectEvaluator(rect), calculateRectFromBounds, calculateRectFromBounds2);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.q1g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ExpandCollapseAnimationHelper.this.m24233h(rect, valueAnimator);
            }
        });
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f31556e;
        if (animatorUpdateListener != null) {
            ofObject.addUpdateListener(animatorUpdateListener);
        }
        ofObject.setDuration(this.f31557f);
        ofObject.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return ofObject;
    }

    /* renamed from: g */
    public final Animator m24238g(boolean z) {
        List<View> children = ViewUtils.getChildren(this.f31553b);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(children));
        ofFloat.setDuration(this.f31557f);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.LINEAR_INTERPOLATOR));
        return ofFloat;
    }

    @NonNull
    public Animator getCollapseAnimator() {
        AnimatorSet m24235d = m24235d(false);
        m24235d.addListener(new C5293b());
        m24234c(m24235d, this.f31554c);
        return m24235d;
    }

    @NonNull
    public Animator getExpandAnimator() {
        AnimatorSet m24235d = m24235d(true);
        m24235d.addListener(new C5292a());
        m24234c(m24235d, this.f31554c);
        return m24235d;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper setAdditionalUpdateListener(@Nullable ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f31556e = animatorUpdateListener;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper setCollapsedViewOffsetY(int i) {
        this.f31558g = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper setDuration(long j) {
        this.f31557f = j;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper setExpandedViewOffsetY(int i) {
        this.f31559h = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public ExpandCollapseAnimationHelper addEndAnchoredViews(@NonNull Collection<View> collection) {
        this.f31555d.addAll(collection);
        return this;
    }
}
