package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public abstract class VisibilityPropagation extends TransitionPropagation {

    /* renamed from: a */
    public static final String f10744a = "android:visibilityPropagation:visibility";

    /* renamed from: b */
    public static final String f10745b = "android:visibilityPropagation:center";

    /* renamed from: c */
    public static final String[] f10746c = {f10744a, f10745b};

    /* renamed from: a */
    public static int m6647a(@Nullable TransitionValues transitionValues, int i) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.values.get(f10745b)) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.TransitionPropagation
    public void captureValues(@NonNull TransitionValues transitionValues) {
        View view = transitionValues.view;
        Integer num = (Integer) transitionValues.values.get(Visibility.f10722R0);
        if (num == null) {
            num = Integer.valueOf(view.getVisibility());
        }
        transitionValues.values.put(f10744a, num);
        view.getLocationOnScreen(r1);
        int round = r1[0] + Math.round(view.getTranslationX());
        int[] iArr = {round};
        iArr[0] = round + (view.getWidth() / 2);
        int round2 = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = round2;
        iArr[1] = round2 + (view.getHeight() / 2);
        transitionValues.values.put(f10745b, iArr);
    }

    @Override // androidx.transition.TransitionPropagation
    @Nullable
    public String[] getPropagationProperties() {
        return f10746c;
    }

    public int getViewVisibility(@Nullable TransitionValues transitionValues) {
        Integer num;
        if (transitionValues == null || (num = (Integer) transitionValues.values.get(f10744a)) == null) {
            return 8;
        }
        return num.intValue();
    }

    public int getViewX(@Nullable TransitionValues transitionValues) {
        return m6647a(transitionValues, 0);
    }

    public int getViewY(@Nullable TransitionValues transitionValues) {
        return m6647a(transitionValues, 1);
    }
}
