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
public final class FadeThroughProvider implements VisibilityAnimatorProvider {

    /* renamed from: b */
    public static final float f33046b = 0.35f;

    /* renamed from: a */
    public float f33047a = 0.35f;

    /* renamed from: com.google.android.material.transition.FadeThroughProvider$a */
    /* loaded from: classes6.dex */
    public class C5457a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ View f33048e;

        /* renamed from: f */
        public final /* synthetic */ float f33049f;

        /* renamed from: g */
        public final /* synthetic */ float f33050g;

        /* renamed from: h */
        public final /* synthetic */ float f33051h;

        /* renamed from: i */
        public final /* synthetic */ float f33052i;

        public C5457a(View view, float f, float f2, float f3, float f4) {
            this.f33048e = view;
            this.f33049f = f;
            this.f33050g = f2;
            this.f33051h = f3;
            this.f33052i = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33048e.setAlpha(knn.m55267n(this.f33049f, this.f33050g, this.f33051h, this.f33052i, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.FadeThroughProvider$b */
    /* loaded from: classes6.dex */
    public class C5458b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33053e;

        /* renamed from: f */
        public final /* synthetic */ float f33054f;

        public C5458b(View view, float f) {
            this.f33053e = view;
            this.f33054f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33053e.setAlpha(this.f33054f);
        }
    }

    /* renamed from: a */
    public static Animator m25526a(View view, float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C5457a(view, f, f2, f3, f4));
        ofFloat.addListener(new C5458b(view, f5));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25526a(view, 0.0f, alpha, this.f33047a, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25526a(view, alpha, 0.0f, 0.0f, this.f33047a, alpha);
    }

    public float getProgressThreshold() {
        return this.f33047a;
    }

    public void setProgressThreshold(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f33047a = f;
    }
}
