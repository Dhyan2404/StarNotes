package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import com.sunia.HTREnginev2.ihl;
import com.sunia.HTREnginev2.l3o;
import com.sunia.HTREnginev2.w4o;
import com.sunia.HTREnginev2.z6k;
import java.util.Map;

/* loaded from: classes3.dex */
public class ChangeBounds extends Transition {

    /* renamed from: R0 */
    public static final String f10479R0 = "android:changeBounds:bounds";

    /* renamed from: S0 */
    public static final String f10480S0 = "android:changeBounds:clip";

    /* renamed from: T0 */
    public static final String f10481T0 = "android:changeBounds:parent";

    /* renamed from: U0 */
    public static final String f10482U0 = "android:changeBounds:windowX";

    /* renamed from: V0 */
    public static final String f10483V0 = "android:changeBounds:windowY";

    /* renamed from: W0 */
    public static final String[] f10484W0 = {f10479R0, f10480S0, f10481T0, f10482U0, f10483V0};

    /* renamed from: X0 */
    public static final Property<C1468i, PointF> f10485X0 = new C1460a(PointF.class, "topLeft");

    /* renamed from: Y0 */
    public static final Property<C1468i, PointF> f10486Y0 = new C1461b(PointF.class, "bottomRight");

    /* renamed from: Z0 */
    public static final Property<View, PointF> f10487Z0 = new C1462c(PointF.class, "bottomRight");

    /* renamed from: a1 */
    public static final Property<View, PointF> f10488a1 = new C1463d(PointF.class, "topLeft");

    /* renamed from: b1 */
    public static final Property<View, PointF> f10489b1 = new C1464e(PointF.class, "position");

    /* renamed from: c1 */
    public static final ihl f10490c1 = new ihl();

    /* renamed from: Q0 */
    public boolean f10491Q0;

    /* renamed from: androidx.transition.ChangeBounds$a */
    /* loaded from: classes3.dex */
    public class C1460a extends Property<C1468i, PointF> {
        public C1460a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(C1468i c1468i) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C1468i c1468i, PointF pointF) {
            c1468i.m6523c(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$b */
    /* loaded from: classes3.dex */
    public class C1461b extends Property<C1468i, PointF> {
        public C1461b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(C1468i c1468i) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C1468i c1468i, PointF pointF) {
            c1468i.m6521a(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$c */
    /* loaded from: classes3.dex */
    public class C1462c extends Property<View, PointF> {
        public C1462c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            w4o.m57932e(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$d */
    /* loaded from: classes3.dex */
    public class C1463d extends Property<View, PointF> {
        public C1463d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            w4o.m57932e(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$e */
    /* loaded from: classes3.dex */
    public class C1464e extends Property<View, PointF> {
        public C1464e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            w4o.m57932e(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$f */
    /* loaded from: classes3.dex */
    public class C1465f extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ C1468i f10492e;
        private final C1468i mViewBounds;

        public C1465f(C1468i c1468i) {
            this.f10492e = c1468i;
            this.mViewBounds = c1468i;
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$g */
    /* loaded from: classes3.dex */
    public static class C1466g extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final View f10494e;

        /* renamed from: f */
        public final Rect f10495f;

        /* renamed from: g */
        public final boolean f10496g;

        /* renamed from: h */
        public final Rect f10497h;

        /* renamed from: i */
        public final boolean f10498i;

        /* renamed from: j */
        public final int f10499j;

        /* renamed from: k */
        public final int f10500k;

        /* renamed from: l */
        public final int f10501l;

        /* renamed from: m */
        public final int f10502m;

        /* renamed from: n */
        public final int f10503n;

        /* renamed from: o */
        public final int f10504o;

        /* renamed from: p */
        public final int f10505p;

        /* renamed from: q */
        public final int f10506q;

        /* renamed from: r */
        public boolean f10507r;

        public C1466g(View view, Rect rect, boolean z, Rect rect2, boolean z2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f10494e = view;
            this.f10495f = rect;
            this.f10496g = z;
            this.f10497h = rect2;
            this.f10498i = z2;
            this.f10499j = i;
            this.f10500k = i2;
            this.f10501l = i3;
            this.f10502m = i4;
            this.f10503n = i5;
            this.f10504o = i6;
            this.f10505p = i7;
            this.f10506q = i8;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.f10507r = true;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.f10494e.setTag(C1486R.id.transition_clip, this.f10494e.getClipBounds());
            this.f10494e.setClipBounds(this.f10498i ? null : this.f10497h);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            Rect rect = (Rect) this.f10494e.getTag(C1486R.id.transition_clip);
            this.f10494e.setTag(C1486R.id.transition_clip, null);
            this.f10494e.setClipBounds(rect);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z) {
            if (this.f10507r) {
                return;
            }
            Rect rect = null;
            if (z) {
                if (!this.f10496g) {
                    rect = this.f10495f;
                }
            } else if (!this.f10498i) {
                rect = this.f10497h;
            }
            this.f10494e.setClipBounds(rect);
            if (z) {
                w4o.m57932e(this.f10494e, this.f10499j, this.f10500k, this.f10501l, this.f10502m);
            } else {
                w4o.m57932e(this.f10494e, this.f10503n, this.f10504o, this.f10505p, this.f10506q);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z) {
            int max = Math.max(this.f10501l - this.f10499j, this.f10505p - this.f10503n);
            int max2 = Math.max(this.f10502m - this.f10500k, this.f10506q - this.f10504o);
            int i = z ? this.f10503n : this.f10499j;
            int i2 = z ? this.f10504o : this.f10500k;
            w4o.m57932e(this.f10494e, i, i2, max + i, max2 + i2);
            this.f10494e.setClipBounds(z ? this.f10497h : this.f10495f);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$h */
    /* loaded from: classes3.dex */
    public static class C1467h extends TransitionListenerAdapter {

        /* renamed from: e */
        public boolean f10508e = false;

        /* renamed from: f */
        public final ViewGroup f10509f;

        public C1467h(@NonNull ViewGroup viewGroup) {
            this.f10509f = viewGroup;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            l3o.m55376c(this.f10509f, false);
            this.f10508e = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            if (!this.f10508e) {
                l3o.m55376c(this.f10509f, false);
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            l3o.m55376c(this.f10509f, false);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            l3o.m55376c(this.f10509f, true);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$i */
    /* loaded from: classes3.dex */
    public static class C1468i {

        /* renamed from: a */
        public int f10510a;

        /* renamed from: b */
        public int f10511b;

        /* renamed from: c */
        public int f10512c;

        /* renamed from: d */
        public int f10513d;

        /* renamed from: e */
        public final View f10514e;

        /* renamed from: f */
        public int f10515f;

        /* renamed from: g */
        public int f10516g;

        public C1468i(View view) {
            this.f10514e = view;
        }

        /* renamed from: a */
        public void m6521a(PointF pointF) {
            this.f10512c = Math.round(pointF.x);
            this.f10513d = Math.round(pointF.y);
            int i = this.f10516g + 1;
            this.f10516g = i;
            if (this.f10515f == i) {
                m6522b();
            }
        }

        /* renamed from: b */
        public final void m6522b() {
            w4o.m57932e(this.f10514e, this.f10510a, this.f10511b, this.f10512c, this.f10513d);
            this.f10515f = 0;
            this.f10516g = 0;
        }

        /* renamed from: c */
        public void m6523c(PointF pointF) {
            this.f10510a = Math.round(pointF.x);
            this.f10511b = Math.round(pointF.y);
            int i = this.f10515f + 1;
            this.f10515f = i;
            if (i == this.f10516g) {
                m6522b();
            }
        }
    }

    public ChangeBounds() {
        this.f10491Q0 = false;
    }

    /* renamed from: L */
    public final void m6510L(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(f10479R0, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(f10481T0, transitionValues.view.getParent());
        if (this.f10491Q0) {
            transitionValues.values.put(f10480S0, view.getClipBounds());
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6510L(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        Rect rect;
        m6510L(transitionValues);
        if (!this.f10491Q0 || (rect = (Rect) transitionValues.view.getTag(C1486R.id.transition_clip)) == null) {
            return;
        }
        transitionValues.values.put(f10480S0, rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i;
        int i2;
        int i3;
        int i4;
        ObjectAnimator m58640a;
        int i5;
        View view;
        ObjectAnimator objectAnimator;
        Animator m6666c;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(f10481T0);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(f10481T0);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = transitionValues2.view;
        Rect rect = (Rect) transitionValues.values.get(f10479R0);
        Rect rect2 = (Rect) transitionValues2.values.get(f10479R0);
        int i6 = rect.left;
        int i7 = rect2.left;
        int i8 = rect.top;
        int i9 = rect2.top;
        int i10 = rect.right;
        int i11 = rect2.right;
        int i12 = rect.bottom;
        int i13 = rect2.bottom;
        int i14 = i10 - i6;
        int i15 = i12 - i8;
        int i16 = i11 - i7;
        int i17 = i13 - i9;
        Rect rect3 = (Rect) transitionValues.values.get(f10480S0);
        Rect rect4 = (Rect) transitionValues2.values.get(f10480S0);
        if ((i14 == 0 || i15 == 0) && (i16 == 0 || i17 == 0)) {
            i = 0;
        } else {
            i = (i6 == i7 && i8 == i9) ? 0 : 1;
            if (i10 != i11 || i12 != i13) {
                i++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i++;
        }
        int i18 = i;
        if (i18 <= 0) {
            return null;
        }
        if (this.f10491Q0) {
            w4o.m57932e(view2, i6, i8, Math.max(i14, i16) + i6, i8 + Math.max(i15, i17));
            if (i6 == i7 && i8 == i9) {
                i2 = i11;
                i3 = i10;
                i4 = i7;
                m58640a = null;
            } else {
                i2 = i11;
                i3 = i10;
                i4 = i7;
                m58640a = z6k.m58640a(view2, f10489b1, getPathMotion().getPath(i6, i8, i7, i9));
            }
            boolean z = rect3 == null;
            if (z) {
                i5 = 0;
                rect3 = new Rect(0, 0, i14, i15);
            } else {
                i5 = 0;
            }
            boolean z2 = rect4 == null ? 1 : i5;
            Rect rect5 = z2 != 0 ? new Rect(i5, i5, i16, i17) : rect4;
            if (rect3.equals(rect5)) {
                view = view2;
                objectAnimator = null;
            } else {
                view2.setClipBounds(rect3);
                objectAnimator = ObjectAnimator.ofObject(view2, "clipBounds", f10490c1, rect3, rect5);
                int i19 = i4;
                view = view2;
                C1466g c1466g = new C1466g(view2, rect3, z, rect5, z2, i6, i8, i3, i12, i19, i9, i2, i13);
                objectAnimator.addListener(c1466g);
                addListener(c1466g);
            }
            m6666c = C1514d.m6666c(m58640a, objectAnimator);
        } else {
            w4o.m57932e(view2, i6, i8, i10, i12);
            if (i18 != 2) {
                m6666c = (i6 == i7 && i8 == i9) ? z6k.m58640a(view2, f10487Z0, getPathMotion().getPath(i10, i12, i11, i13)) : z6k.m58640a(view2, f10488a1, getPathMotion().getPath(i6, i8, i7, i9));
            } else if (i14 == i16 && i15 == i17) {
                m6666c = z6k.m58640a(view2, f10489b1, getPathMotion().getPath(i6, i8, i7, i9));
            } else {
                C1468i c1468i = new C1468i(view2);
                ObjectAnimator m58640a2 = z6k.m58640a(c1468i, f10485X0, getPathMotion().getPath(i6, i8, i7, i9));
                ObjectAnimator m58640a3 = z6k.m58640a(c1468i, f10486Y0, getPathMotion().getPath(i10, i12, i11, i13));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(m58640a2, m58640a3);
                animatorSet.addListener(new C1465f(c1468i));
                view = view2;
                m6666c = animatorSet;
            }
            view = view2;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            l3o.m55376c(viewGroup4, true);
            getRootTransition().addListener(new C1467h(viewGroup4));
        }
        return m6666c;
    }

    public boolean getResizeClip() {
        return this.f10491Q0;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return f10484W0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    public void setResizeClip(boolean z) {
        this.f10491Q0 = z;
    }

    public ChangeBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10491Q0 = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10759d);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }
}
