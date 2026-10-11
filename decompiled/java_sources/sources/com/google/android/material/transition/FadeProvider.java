package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.knn;

/* loaded from: classes6.dex */
public final class FadeProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    public float f33038a = 1.0f;

    /* renamed from: com.google.android.material.transition.FadeProvider$a */
    /* loaded from: classes6.dex */
    public class C5455a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ View f33039e;

        /* renamed from: f */
        public final /* synthetic */ float f33040f;

        /* renamed from: g */
        public final /* synthetic */ float f33041g;

        /* renamed from: h */
        public final /* synthetic */ float f33042h;

        /* renamed from: i */
        public final /* synthetic */ float f33043i;

        public C5455a(View view, float f, float f2, float f3, float f4) {
            this.f33039e = view;
            this.f33040f = f;
            this.f33041g = f2;
            this.f33042h = f3;
            this.f33043i = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33039e.setAlpha(knn.m55267n(this.f33040f, this.f33041g, this.f33042h, this.f33043i, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.FadeProvider$b */
    /* loaded from: classes6.dex */
    public class C5456b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33044e;

        /* renamed from: f */
        public final /* synthetic */ float f33045f;

        public C5456b(View view, float f) {
            this.f33044e = view;
            this.f33045f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33044e.setAlpha(this.f33045f);
        }
    }

    /* renamed from: a */
    public static Animator m25525a(View view, float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C5455a(view, f, f2, f3, f4));
        ofFloat.addListener(new C5456b(view, f5));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25525a(view, 0.0f, alpha, 0.0f, this.f33038a, alpha);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25525a(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    public float getIncomingEndThreshold() {
        return this.f33038a;
    }

    public void setIncomingEndThreshold(float f) {
        this.f33038a = f;
    }
}
