package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class Explode extends Visibility {

    /* renamed from: W0 */
    public static final TimeInterpolator f10574W0 = new DecelerateInterpolator();

    /* renamed from: X0 */
    public static final TimeInterpolator f10575X0 = new AccelerateInterpolator();

    /* renamed from: Y0 */
    public static final String f10576Y0 = "android:explode:screenBounds";

    /* renamed from: V0 */
    public int[] f10577V0;

    public Explode() {
        this.f10577V0 = new int[2];
        setPropagation(new CircularPropagation());
    }

    /* renamed from: L */
    private void m6555L(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.f10577V0);
        int[] iArr = this.f10577V0;
        int i = iArr[0];
        int i2 = iArr[1];
        transitionValues.values.put(f10576Y0, new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    /* renamed from: N */
    public static float m6556N(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: O */
    public static float m6557O(View view, int i, int i2) {
        return m6556N(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    /* renamed from: P */
    public final void m6558P(View view, Rect rect, int[] iArr) {
        int centerY;
        int i;
        view.getLocationOnScreen(this.f10577V0);
        int[] iArr2 = this.f10577V0;
        int i2 = iArr2[0];
        int i3 = iArr2[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            i = (view.getWidth() / 2) + i2 + Math.round(view.getTranslationX());
            centerY = (view.getHeight() / 2) + i3 + Math.round(view.getTranslationY());
        } else {
            int centerX = epicenter.centerX();
            centerY = epicenter.centerY();
            i = centerX;
        }
        float centerX2 = rect.centerX() - i;
        float centerY2 = rect.centerY() - centerY;
        if (centerX2 == 0.0f && centerY2 == 0.0f) {
            centerX2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY2 = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float m6556N = m6556N(centerX2, centerY2);
        float m6557O = m6557O(view, i - i2, centerY - i3);
        iArr[0] = Math.round((centerX2 / m6556N) * m6557O);
        iArr[1] = Math.round(m6557O * (centerY2 / m6556N));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        m6555L(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        m6555L(transitionValues);
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(f10576Y0);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        m6558P(viewGroup, rect, this.f10577V0);
        int[] iArr = this.f10577V0;
        return C1515e.m6669a(view, transitionValues2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f10574W0, this);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        float f;
        float f2;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(f10576Y0);
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(C1486R.id.transition_position);
        if (iArr != null) {
            f = (r7 - rect.left) + translationX;
            f2 = (r0 - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f = translationX;
            f2 = translationY;
        }
        m6558P(viewGroup, rect, this.f10577V0);
        int[] iArr2 = this.f10577V0;
        return C1515e.m6669a(view, transitionValues, i, i2, translationX, translationY, f + iArr2[0], f2 + iArr2[1], f10575X0, this);
    }

    public Explode(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10577V0 = new int[2];
        setPropagation(new CircularPropagation());
    }
}
