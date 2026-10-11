package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import com.sunia.HTREnginev2.ong;
import com.sunia.HTREnginev2.pgj;
import com.sunia.HTREnginev2.r2h;
import com.sunia.HTREnginev2.t2h;
import com.sunia.HTREnginev2.w4o;
import com.sunia.HTREnginev2.y8l;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public class ChangeTransform extends Transition {

    /* renamed from: V0 */
    public static final String f10539V0 = "android:changeTransform:parent";

    /* renamed from: X0 */
    public static final String f10541X0 = "android:changeTransform:intermediateParentMatrix";

    /* renamed from: Y0 */
    public static final String f10542Y0 = "android:changeTransform:intermediateMatrix";

    /* renamed from: Q0 */
    public boolean f10547Q0;

    /* renamed from: R0 */
    public boolean f10548R0;

    /* renamed from: S0 */
    public Matrix f10549S0;

    /* renamed from: T0 */
    public static final String f10537T0 = "android:changeTransform:matrix";

    /* renamed from: U0 */
    public static final String f10538U0 = "android:changeTransform:transforms";

    /* renamed from: W0 */
    public static final String f10540W0 = "android:changeTransform:parentMatrix";

    /* renamed from: Z0 */
    public static final String[] f10543Z0 = {f10537T0, f10538U0, f10540W0};

    /* renamed from: a1 */
    public static final Property<C1478e, float[]> f10544a1 = new C1474a(float[].class, "nonTranslations");

    /* renamed from: b1 */
    public static final Property<C1478e, PointF> f10545b1 = new C1475b(PointF.class, "translations");

    /* renamed from: c1 */
    public static final boolean f10546c1 = true;

    /* renamed from: androidx.transition.ChangeTransform$a */
    /* loaded from: classes3.dex */
    public class C1474a extends Property<C1478e, float[]> {
        public C1474a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float[] get(C1478e c1478e) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C1478e c1478e, float[] fArr) {
            c1478e.m6552d(fArr);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$b */
    /* loaded from: classes3.dex */
    public class C1475b extends Property<C1478e, PointF> {
        public C1475b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(C1478e c1478e) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C1478e c1478e, PointF pointF) {
            c1478e.m6551c(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$c */
    /* loaded from: classes3.dex */
    public static class C1476c extends TransitionListenerAdapter {

        /* renamed from: e */
        public View f10550e;

        /* renamed from: f */
        public r2h f10551f;

        public C1476c(View view, r2h r2hVar) {
            this.f10550e = view;
            this.f10551f = r2hVar;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
            t2h.m57292b(this.f10550e);
            this.f10550e.setTag(C1486R.id.transition_transform, null);
            this.f10550e.setTag(C1486R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.f10551f.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f10551f.setVisibility(0);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$d */
    /* loaded from: classes3.dex */
    public static class C1477d extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f10552e;

        /* renamed from: f */
        public final Matrix f10553f = new Matrix();

        /* renamed from: g */
        public final boolean f10554g;

        /* renamed from: h */
        public final boolean f10555h;

        /* renamed from: i */
        public final View f10556i;

        /* renamed from: j */
        public final C1479f f10557j;

        /* renamed from: k */
        public final C1478e f10558k;

        /* renamed from: l */
        public final Matrix f10559l;

        public C1477d(View view, C1479f c1479f, C1478e c1478e, Matrix matrix, boolean z, boolean z2) {
            this.f10554g = z;
            this.f10555h = z2;
            this.f10556i = view;
            this.f10557j = c1479f;
            this.f10558k = c1478e;
            this.f10559l = matrix;
        }

        /* renamed from: a */
        public final void m6548a(Matrix matrix) {
            this.f10553f.set(matrix);
            this.f10556i.setTag(C1486R.id.transition_transform, this.f10553f);
            this.f10557j.m6553a(this.f10556i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f10552e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f10552e) {
                if (this.f10554g && this.f10555h) {
                    m6548a(this.f10559l);
                } else {
                    this.f10556i.setTag(C1486R.id.transition_transform, null);
                    this.f10556i.setTag(C1486R.id.parent_matrix, null);
                }
            }
            w4o.m57931d(this.f10556i, null);
            this.f10557j.m6553a(this.f10556i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            m6548a(this.f10558k.m6549a());
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            ChangeTransform.m6537P(this.f10556i);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$e */
    /* loaded from: classes3.dex */
    public static class C1478e {

        /* renamed from: a */
        public final Matrix f10560a = new Matrix();

        /* renamed from: b */
        public final View f10561b;

        /* renamed from: c */
        public final float[] f10562c;

        /* renamed from: d */
        public float f10563d;

        /* renamed from: e */
        public float f10564e;

        public C1478e(View view, float[] fArr) {
            this.f10561b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f10562c = fArr2;
            this.f10563d = fArr2[2];
            this.f10564e = fArr2[5];
            m6550b();
        }

        /* renamed from: a */
        public Matrix m6549a() {
            return this.f10560a;
        }

        /* renamed from: b */
        public final void m6550b() {
            float[] fArr = this.f10562c;
            fArr[2] = this.f10563d;
            fArr[5] = this.f10564e;
            this.f10560a.setValues(fArr);
            w4o.m57931d(this.f10561b, this.f10560a);
        }

        /* renamed from: c */
        public void m6551c(PointF pointF) {
            this.f10563d = pointF.x;
            this.f10564e = pointF.y;
            m6550b();
        }

        /* renamed from: d */
        public void m6552d(float[] fArr) {
            System.arraycopy(fArr, 0, this.f10562c, 0, fArr.length);
            m6550b();
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$f */
    /* loaded from: classes3.dex */
    public static class C1479f {

        /* renamed from: a */
        public final float f10565a;

        /* renamed from: b */
        public final float f10566b;

        /* renamed from: c */
        public final float f10567c;

        /* renamed from: d */
        public final float f10568d;

        /* renamed from: e */
        public final float f10569e;

        /* renamed from: f */
        public final float f10570f;

        /* renamed from: g */
        public final float f10571g;

        /* renamed from: h */
        public final float f10572h;

        public C1479f(View view) {
            this.f10565a = view.getTranslationX();
            this.f10566b = view.getTranslationY();
            this.f10567c = ViewCompat.getTranslationZ(view);
            this.f10568d = view.getScaleX();
            this.f10569e = view.getScaleY();
            this.f10570f = view.getRotationX();
            this.f10571g = view.getRotationY();
            this.f10572h = view.getRotation();
        }

        /* renamed from: a */
        public void m6553a(View view) {
            ChangeTransform.m6538R(view, this.f10565a, this.f10566b, this.f10567c, this.f10568d, this.f10569e, this.f10570f, this.f10571g, this.f10572h);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1479f)) {
                return false;
            }
            C1479f c1479f = (C1479f) obj;
            return c1479f.f10565a == this.f10565a && c1479f.f10566b == this.f10566b && c1479f.f10567c == this.f10567c && c1479f.f10568d == this.f10568d && c1479f.f10569e == this.f10569e && c1479f.f10570f == this.f10570f && c1479f.f10571g == this.f10571g && c1479f.f10572h == this.f10572h;
        }

        public int hashCode() {
            float f = this.f10565a;
            int floatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
            float f2 = this.f10566b;
            int floatToIntBits2 = (floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f10567c;
            int floatToIntBits3 = (floatToIntBits2 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
            float f4 = this.f10568d;
            int floatToIntBits4 = (floatToIntBits3 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
            float f5 = this.f10569e;
            int floatToIntBits5 = (floatToIntBits4 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
            float f6 = this.f10570f;
            int floatToIntBits6 = (floatToIntBits5 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
            float f7 = this.f10571g;
            int floatToIntBits7 = (floatToIntBits6 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
            float f8 = this.f10572h;
            return floatToIntBits7 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0);
        }
    }

    public ChangeTransform() {
        this.f10547Q0 = true;
        this.f10548R0 = true;
        this.f10549S0 = new Matrix();
    }

    /* renamed from: P */
    public static void m6537P(View view) {
        m6538R(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: R */
    public static void m6538R(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        ViewCompat.setTranslationZ(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    /* renamed from: L */
    public final void m6539L(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        transitionValues.values.put(f10539V0, view.getParent());
        transitionValues.values.put(f10538U0, new C1479f(view));
        Matrix matrix = view.getMatrix();
        transitionValues.values.put(f10537T0, (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.f10548R0) {
            Matrix matrix2 = new Matrix();
            w4o.m57935h((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r1.getScrollX(), -r1.getScrollY());
            transitionValues.values.put(f10540W0, matrix2);
            transitionValues.values.put(f10542Y0, view.getTag(C1486R.id.transition_transform));
            transitionValues.values.put(f10541X0, view.getTag(C1486R.id.parent_matrix));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.transition.TransitionSet] */
    /* renamed from: M */
    public final void m6540M(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.view;
        Matrix matrix = new Matrix((Matrix) transitionValues2.values.get(f10540W0));
        w4o.m57936i(viewGroup, matrix);
        r2h m57291a = t2h.m57291a(view, viewGroup, matrix);
        if (m57291a == null) {
            return;
        }
        m57291a.mo6662a((ViewGroup) transitionValues.values.get(f10539V0), transitionValues.view);
        while (true) {
            ?? r1 = this.f10661v;
            if (r1 == 0) {
                break;
            } else {
                this = r1;
            }
        }
        this.addListener(new C1476c(view, m57291a));
        if (f10546c1) {
            View view2 = transitionValues.view;
            if (view2 != transitionValues2.view) {
                w4o.m57933f(view2, 0.0f);
            }
            w4o.m57933f(view, 1.0f);
        }
    }

    /* renamed from: N */
    public final ObjectAnimator m6541N(TransitionValues transitionValues, TransitionValues transitionValues2, boolean z) {
        Matrix matrix = (Matrix) transitionValues.values.get(f10537T0);
        Matrix matrix2 = (Matrix) transitionValues2.values.get(f10537T0);
        if (matrix == null) {
            matrix = pgj.f80772a;
        }
        if (matrix2 == null) {
            matrix2 = pgj.f80772a;
        }
        Matrix matrix3 = matrix2;
        if (matrix.equals(matrix3)) {
            return null;
        }
        C1479f c1479f = (C1479f) transitionValues2.values.get(f10538U0);
        View view = transitionValues2.view;
        m6537P(view);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix3.getValues(fArr2);
        C1478e c1478e = new C1478e(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(c1478e, PropertyValuesHolder.ofObject(f10544a1, new ong(new float[9]), fArr, fArr2), y8l.m58396a(f10545b1, getPathMotion().getPath(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        C1477d c1477d = new C1477d(view, c1479f, c1478e, matrix3, z, this.f10547Q0);
        ofPropertyValuesHolder.addListener(c1477d);
        ofPropertyValuesHolder.addPauseListener(c1477d);
        return ofPropertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001a, code lost:
    
        if (r4 == r5) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r5 == r3.view) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        r1 = false;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6542O(android.view.ViewGroup r4, android.view.ViewGroup r5) {
        /*
            r3 = this;
            boolean r0 = r3.m6605v(r4)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            boolean r0 = r3.m6605v(r5)
            if (r0 != 0) goto Lf
            goto L1a
        Lf:
            androidx.transition.TransitionValues r3 = r3.m6602q(r4, r1)
            if (r3 == 0) goto L1f
            android.view.View r3 = r3.view
            if (r5 != r3) goto L1d
            goto L1e
        L1a:
            if (r4 != r5) goto L1d
            goto L1e
        L1d:
            r1 = r2
        L1e:
            r2 = r1
        L1f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.m6542O(android.view.ViewGroup, android.view.ViewGroup):boolean");
    }

    /* renamed from: Q */
    public final void m6543Q(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix = (Matrix) transitionValues2.values.get(f10540W0);
        transitionValues2.view.setTag(C1486R.id.parent_matrix, matrix);
        Matrix matrix2 = this.f10549S0;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) transitionValues.values.get(f10537T0);
        if (matrix3 == null) {
            matrix3 = new Matrix();
            transitionValues.values.put(f10537T0, matrix3);
        }
        matrix3.postConcat((Matrix) transitionValues.values.get(f10540W0));
        matrix3.postConcat(matrix2);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6539L(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m6539L(transitionValues);
        if (f10546c1) {
            return;
        }
        ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.values.containsKey(f10539V0) || !transitionValues2.values.containsKey(f10539V0)) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.values.get(f10539V0);
        boolean z = this.f10548R0 && !m6542O(viewGroup2, (ViewGroup) transitionValues2.values.get(f10539V0));
        Matrix matrix = (Matrix) transitionValues.values.get(f10542Y0);
        if (matrix != null) {
            transitionValues.values.put(f10537T0, matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.values.get(f10541X0);
        if (matrix2 != null) {
            transitionValues.values.put(f10540W0, matrix2);
        }
        if (z) {
            m6543Q(transitionValues, transitionValues2);
        }
        ObjectAnimator m6541N = m6541N(transitionValues, transitionValues2, z);
        if (z && m6541N != null && this.f10547Q0) {
            m6540M(viewGroup, transitionValues, transitionValues2);
        } else if (!f10546c1) {
            viewGroup2.endViewTransition(transitionValues.view);
        }
        return m6541N;
    }

    public boolean getReparent() {
        return this.f10548R0;
    }

    public boolean getReparentWithOverlay() {
        return this.f10547Q0;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return f10543Z0;
    }

    public void setReparent(boolean z) {
        this.f10548R0 = z;
    }

    public void setReparentWithOverlay(boolean z) {
        this.f10547Q0 = z;
    }

    public ChangeTransform(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10547Q0 = true;
        this.f10548R0 = true;
        this.f10549S0 = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10762g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f10547Q0 = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f10548R0 = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }
}
