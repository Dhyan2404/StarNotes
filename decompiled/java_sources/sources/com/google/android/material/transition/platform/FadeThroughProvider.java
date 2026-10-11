package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.jnn;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class FadeThroughProvider implements VisibilityAnimatorProvider {

    /* renamed from: b */
    public static final float f33193b = 0.35f;

    /* renamed from: a */
    public float f33194a = 0.35f;

    /* renamed from: com.google.android.material.transition.platform.FadeThroughProvider$a */
    /* loaded from: classes6.dex */
    public class C5469a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ View f33195e;

        /* renamed from: f */
        public final /* synthetic */ float f33196f;

        /* renamed from: g */
        public final /* synthetic */ float f33197g;

        /* renamed from: h */
        public final /* synthetic */ float f33198h;

        /* renamed from: i */
        public final /* synthetic */ float f33199i;

        public C5469a(View view, float f, float f2, float f3, float f4) {
            this.f33195e = view;
            this.f33196f = f;
            this.f33197g = f2;
            this.f33198h = f3;
            this.f33199i = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33195e.setAlpha(jnn.m54997n(this.f33196f, this.f33197g, this.f33198h, this.f33199i, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.FadeThroughProvider$b */
    /* loaded from: classes6.dex */
    public class C5470b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33200e;

        /* renamed from: f */
        public final /* synthetic */ float f33201f;

        public C5470b(View view, float f) {
            this.f33200e = view;
            this.f33201f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33200e.setAlpha(this.f33201f);
        }
    }

    /* renamed from: a */
    public static Animator m25584a(View view, float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C5469a(view, f, f2, f3, f4));
        ofFloat.addListener(new C5470b(view, f5));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25584a(view, 0.0f, alpha, this.f33194a, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25584a(view, alpha, 0.0f, 0.0f, this.f33194a, alpha);
    }

    public float getProgressThreshold() {
        return this.f33194a;
    }

    public void setProgressThreshold(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f33194a = f;
    }
}
