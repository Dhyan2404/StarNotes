package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import com.sunia.HTREnginev2.w4o;

/* loaded from: classes3.dex */
public class Fade extends Visibility {

    /* renamed from: IN */
    public static final int f10578IN = 1;
    public static final int OUT = 2;

    /* renamed from: V0 */
    public static final String f10579V0 = "android:fade:transitionAlpha";

    /* renamed from: W0 */
    public static final String f10580W0 = "Fade";

    /* renamed from: androidx.transition.Fade$a */
    /* loaded from: classes3.dex */
    public static class C1480a extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final View f10581e;

        /* renamed from: f */
        public boolean f10582f = false;

        public C1480a(View view) {
            this.f10581e = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            w4o.m57933f(this.f10581e, 1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f10581e.hasOverlappingRendering() && this.f10581e.getLayerType() == 0) {
                this.f10582f = true;
                this.f10581e.setLayerType(2, null);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.f10581e.setTag(C1486R.id.transition_pause_alpha, Float.valueOf(this.f10581e.getVisibility() == 0 ? w4o.m57929b(this.f10581e) : 0.0f));
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f10581e.setTag(C1486R.id.transition_pause_alpha, null);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z) {
            if (this.f10582f) {
                this.f10581e.setLayerType(0, null);
            }
            if (z) {
                return;
            }
            w4o.m57933f(this.f10581e, 1.0f);
            w4o.m57928a(this.f10581e);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition, boolean z) {
        }
    }

    public Fade(int i) {
        setMode(i);
    }

    /* renamed from: O */
    public static float m6559O(TransitionValues transitionValues, float f) {
        Float f2;
        return (transitionValues == null || (f2 = (Float) transitionValues.values.get(f10579V0)) == null) ? f : f2.floatValue();
    }

    /* renamed from: N */
    public final Animator m6560N(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        w4o.m57933f(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, w4o.f88232c, f2);
        C1480a c1480a = new C1480a(view);
        ofFloat.addListener(c1480a);
        getRootTransition().addListener(c1480a);
        return ofFloat;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        Float f = (Float) transitionValues.view.getTag(C1486R.id.transition_pause_alpha);
        if (f == null) {
            f = transitionValues.view.getVisibility() == 0 ? Float.valueOf(w4o.m57929b(transitionValues.view)) : Float.valueOf(0.0f);
        }
        transitionValues.values.put(f10579V0, f);
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        w4o.m57930c(view);
        return m6560N(view, m6559O(transitionValues, 0.0f), 1.0f);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        w4o.m57930c(view);
        Animator m6560N = m6560N(view, m6559O(transitionValues, 1.0f), 0.0f);
        if (m6560N == null) {
            w4o.m57933f(view, m6559O(transitionValues2, 1.0f));
        }
        return m6560N;
    }

    public Fade() {
    }

    public Fade(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10761f);
        setMode(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, getMode()));
        obtainStyledAttributes.recycle();
    }
}
