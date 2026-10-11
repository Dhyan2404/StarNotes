package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import com.sunia.HTREnginev2.ihl;
import com.sunia.HTREnginev2.w4o;

/* loaded from: classes3.dex */
public class ChangeClipBounds extends Transition {

    /* renamed from: R0 */
    public static final String f10518R0 = "android:clipBounds:bounds";

    /* renamed from: Q0 */
    public static final String f10517Q0 = "android:clipBounds:clip";

    /* renamed from: S0 */
    public static final String[] f10519S0 = {f10517Q0};

    /* renamed from: T0 */
    public static final Rect f10520T0 = new Rect();

    /* renamed from: androidx.transition.ChangeClipBounds$a */
    /* loaded from: classes3.dex */
    public static class C1469a extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final Rect f10521e;

        /* renamed from: f */
        public final Rect f10522f;

        /* renamed from: g */
        public final View f10523g;

        public C1469a(View view, Rect rect, Rect rect2) {
            this.f10523g = view;
            this.f10521e = rect;
            this.f10522f = rect2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            Rect clipBounds = this.f10523g.getClipBounds();
            if (clipBounds == null) {
                clipBounds = ChangeClipBounds.f10520T0;
            }
            this.f10523g.setTag(C1486R.id.transition_clip, clipBounds);
            this.f10523g.setClipBounds(this.f10522f);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f10523g.setClipBounds((Rect) this.f10523g.getTag(C1486R.id.transition_clip));
            this.f10523g.setTag(C1486R.id.transition_clip, null);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z) {
            if (!z) {
                this.f10523g.setClipBounds(this.f10522f);
            } else {
                this.f10523g.setClipBounds(this.f10521e);
            }
        }
    }

    public ChangeClipBounds() {
    }

    /* renamed from: L */
    public final void m6524L(TransitionValues transitionValues, boolean z) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect rect = z ? (Rect) view.getTag(C1486R.id.transition_clip) : null;
        if (rect == null) {
            rect = view.getClipBounds();
        }
        Rect rect2 = rect != f10520T0 ? rect : null;
        transitionValues.values.put(f10517Q0, rect2);
        if (rect2 == null) {
            transitionValues.values.put(f10518R0, new Rect(0, 0, view.getWidth(), view.getHeight()));
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6524L(transitionValues, false);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m6524L(transitionValues, true);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(f10517Q0) || !transitionValues2.values.containsKey(f10517Q0)) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(f10517Q0);
        Rect rect2 = (Rect) transitionValues2.values.get(f10517Q0);
        if (rect == null && rect2 == null) {
            return null;
        }
        Rect rect3 = rect == null ? (Rect) transitionValues.values.get(f10518R0) : rect;
        Rect rect4 = rect2 == null ? (Rect) transitionValues2.values.get(f10518R0) : rect2;
        if (rect3.equals(rect4)) {
            return null;
        }
        transitionValues2.view.setClipBounds(rect);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(transitionValues2.view, (Property<View, V>) w4o.f88233d, (TypeEvaluator) new ihl(new Rect()), (Object[]) new Rect[]{rect3, rect4});
        C1469a c1469a = new C1469a(transitionValues2.view, rect, rect2);
        ofObject.addListener(c1469a);
        addListener(c1469a);
        return ofObject;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return f10519S0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    public ChangeClipBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
