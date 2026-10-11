package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class ChangeScroll extends Transition {

    /* renamed from: Q0 */
    public static final String f10534Q0 = "android:changeScroll:x";

    /* renamed from: R0 */
    public static final String f10535R0 = "android:changeScroll:y";

    /* renamed from: S0 */
    public static final String[] f10536S0 = {f10534Q0, f10535R0};

    public ChangeScroll() {
    }

    /* renamed from: L */
    public final void m6536L(TransitionValues transitionValues) {
        transitionValues.values.put(f10534Q0, Integer.valueOf(transitionValues.view.getScrollX()));
        transitionValues.values.put(f10535R0, Integer.valueOf(transitionValues.view.getScrollY()));
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6536L(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m6536L(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        View view = transitionValues2.view;
        int intValue = ((Integer) transitionValues.values.get(f10534Q0)).intValue();
        int intValue2 = ((Integer) transitionValues2.values.get(f10534Q0)).intValue();
        int intValue3 = ((Integer) transitionValues.values.get(f10535R0)).intValue();
        int intValue4 = ((Integer) transitionValues2.values.get(f10535R0)).intValue();
        if (intValue != intValue2) {
            view.setScrollX(intValue);
            objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
        } else {
            objectAnimator = null;
        }
        if (intValue3 != intValue4) {
            view.setScrollY(intValue3);
            objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
        }
        return C1514d.m6666c(objectAnimator, objectAnimator2);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f10536S0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    public ChangeScroll(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
