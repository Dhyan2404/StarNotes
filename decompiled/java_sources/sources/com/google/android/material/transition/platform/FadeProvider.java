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
public final class FadeProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    public float f33185a = 1.0f;

    /* renamed from: com.google.android.material.transition.platform.FadeProvider$a */
    /* loaded from: classes6.dex */
    public class C5467a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ View f33186e;

        /* renamed from: f */
        public final /* synthetic */ float f33187f;

        /* renamed from: g */
        public final /* synthetic */ float f33188g;

        /* renamed from: h */
        public final /* synthetic */ float f33189h;

        /* renamed from: i */
        public final /* synthetic */ float f33190i;

        public C5467a(View view, float f, float f2, float f3, float f4) {
            this.f33186e = view;
            this.f33187f = f;
            this.f33188g = f2;
            this.f33189h = f3;
            this.f33190i = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33186e.setAlpha(jnn.m54997n(this.f33187f, this.f33188g, this.f33189h, this.f33190i, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.FadeProvider$b */
    /* loaded from: classes6.dex */
    public class C5468b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33191e;

        /* renamed from: f */
        public final /* synthetic */ float f33192f;

        public C5468b(View view, float f) {
            this.f33191e = view;
            this.f33192f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33191e.setAlpha(this.f33192f);
        }
    }

    /* renamed from: a */
    public static Animator m25583a(View view, float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C5467a(view, f, f2, f3, f4));
        ofFloat.addListener(new C5468b(view, f5));
        return ofFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25583a(view, 0.0f, alpha, 0.0f, this.f33185a, alpha);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m25583a(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    public float getIncomingEndThreshold() {
        return this.f33185a;
    }

    public void setIncomingEndThreshold(float f) {
        this.f33185a = f;
    }
}
