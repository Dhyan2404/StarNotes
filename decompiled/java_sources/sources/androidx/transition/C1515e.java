package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;

/* renamed from: androidx.transition.e */
/* loaded from: classes3.dex */
public class C1515e {
    @Nullable
    /* renamed from: a */
    public static Animator m6669a(@NonNull View view, @NonNull TransitionValues transitionValues, int i, int i2, float f, float f2, float f3, float f4, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(C1486R.id.transition_position)) != null) {
            f = (r2[0] - i) + translationX;
            f2 = (r2[1] - i2) + translationY;
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
        if (f == f3 && f2 == f4) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f3), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f2, f4));
        a aVar = new a(view, transitionValues.view, translationX, translationY);
        transition.addListener(aVar);
        ofPropertyValuesHolder.addListener(aVar);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }

    /* renamed from: androidx.transition.e$a */
    /* loaded from: classes3.dex */
    public static class a extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final View f10796e;

        /* renamed from: f */
        public final View f10797f;

        /* renamed from: g */
        public int[] f10798g;

        /* renamed from: h */
        public float f10799h;

        /* renamed from: i */
        public float f10800i;

        /* renamed from: j */
        public final float f10801j;

        /* renamed from: k */
        public final float f10802k;

        /* renamed from: l */
        public boolean f10803l;

        public a(View view, View view2, float f, float f2) {
            this.f10797f = view;
            this.f10796e = view2;
            this.f10801j = f;
            this.f10802k = f2;
            int[] iArr = (int[]) view2.getTag(C1486R.id.transition_position);
            this.f10798g = iArr;
            if (iArr != null) {
                view2.setTag(C1486R.id.transition_position, null);
            }
        }

        /* renamed from: a */
        public final void m6670a() {
            if (this.f10798g == null) {
                this.f10798g = new int[2];
            }
            this.f10797f.getLocationOnScreen(this.f10798g);
            this.f10796e.setTag(C1486R.id.transition_position, this.f10798g);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f10803l = true;
            this.f10797f.setTranslationX(this.f10801j);
            this.f10797f.setTranslationY(this.f10802k);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z) {
            if (z) {
                return;
            }
            this.f10797f.setTranslationX(this.f10801j);
            this.f10797f.setTranslationY(this.f10802k);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.f10803l = true;
            this.f10797f.setTranslationX(this.f10801j);
            this.f10797f.setTranslationY(this.f10802k);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition, boolean z) {
            if (this.f10803l) {
                return;
            }
            this.f10796e.setTag(C1486R.id.transition_position, null);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            m6670a();
            this.f10799h = this.f10797f.getTranslationX();
            this.f10800i = this.f10797f.getTranslationY();
            this.f10797f.setTranslationX(this.f10801j);
            this.f10797f.setTranslationY(this.f10802k);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f10797f.setTranslationX(this.f10799h);
            this.f10797f.setTranslationY(this.f10800i);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            onTransitionEnd(transition, false);
        }
    }
}
