package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import com.sunia.HTREnginev2.l3o;
import com.sunia.HTREnginev2.w4o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;

    /* renamed from: T0 */
    public static final String f10724T0 = "android:visibility:screenLocation";

    /* renamed from: Q0 */
    public int f10726Q0;

    /* renamed from: R0 */
    public static final String f10722R0 = "android:visibility:visibility";

    /* renamed from: S0 */
    public static final String f10723S0 = "android:visibility:parent";

    /* renamed from: U0 */
    public static final String[] f10725U0 = {f10722R0, f10723S0};

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Mode {
    }

    /* renamed from: androidx.transition.Visibility$a */
    /* loaded from: classes3.dex */
    public static class C1508a extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final View f10727e;

        /* renamed from: f */
        public final int f10728f;

        /* renamed from: g */
        public final ViewGroup f10729g;

        /* renamed from: h */
        public final boolean f10730h;

        /* renamed from: i */
        public boolean f10731i;

        /* renamed from: j */
        public boolean f10732j = false;

        public C1508a(View view, int i, boolean z) {
            this.f10727e = view;
            this.f10728f = i;
            this.f10729g = (ViewGroup) view.getParent();
            this.f10730h = z;
            m6645b(true);
        }

        /* renamed from: a */
        public final void m6644a() {
            if (!this.f10732j) {
                w4o.m57934g(this.f10727e, this.f10728f);
                ViewGroup viewGroup = this.f10729g;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m6645b(false);
        }

        /* renamed from: b */
        public final void m6645b(boolean z) {
            ViewGroup viewGroup;
            if (!this.f10730h || this.f10731i == z || (viewGroup = this.f10729g) == null) {
                return;
            }
            this.f10731i = z;
            l3o.m55376c(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f10732j = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m6644a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            m6645b(false);
            if (this.f10732j) {
                return;
            }
            w4o.m57934g(this.f10727e, this.f10728f);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            m6645b(true);
            if (this.f10732j) {
                return;
            }
            w4o.m57934g(this.f10727e, 0);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z) {
            if (z) {
                return;
            }
            m6644a();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NonNull Animator animator, boolean z) {
            if (z) {
                w4o.m57934g(this.f10727e, 0);
                ViewGroup viewGroup = this.f10729g;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }
    }

    /* renamed from: androidx.transition.Visibility$b */
    /* loaded from: classes3.dex */
    public class C1509b extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final ViewGroup f10733e;

        /* renamed from: f */
        public final View f10734f;

        /* renamed from: g */
        public final View f10735g;

        /* renamed from: h */
        public boolean f10736h = true;

        public C1509b(ViewGroup viewGroup, View view, View view2) {
            this.f10733e = viewGroup;
            this.f10734f = view;
            this.f10735g = view2;
        }

        /* renamed from: a */
        public final void m6646a() {
            this.f10735g.setTag(C1486R.id.save_overlay_view, null);
            this.f10733e.getOverlay().remove(this.f10734f);
            this.f10736h = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m6646a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f10733e.getOverlay().remove(this.f10734f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (this.f10734f.getParent() == null) {
                this.f10733e.getOverlay().add(this.f10734f);
            } else {
                Visibility.this.cancel();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NonNull Animator animator, boolean z) {
            if (z) {
                this.f10735g.setTag(C1486R.id.save_overlay_view, this.f10734f);
                this.f10733e.getOverlay().add(this.f10734f);
                this.f10736h = true;
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            if (this.f10736h) {
                m6646a();
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            transition.removeListener(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z) {
            if (z) {
                return;
            }
            m6646a();
        }
    }

    /* renamed from: androidx.transition.Visibility$c */
    /* loaded from: classes3.dex */
    public static class C1510c {

        /* renamed from: a */
        public boolean f10738a;

        /* renamed from: b */
        public boolean f10739b;

        /* renamed from: c */
        public int f10740c;

        /* renamed from: d */
        public int f10741d;

        /* renamed from: e */
        public ViewGroup f10742e;

        /* renamed from: f */
        public ViewGroup f10743f;
    }

    public Visibility() {
        this.f10726Q0 = 3;
    }

    /* renamed from: L */
    public final void m6642L(TransitionValues transitionValues) {
        transitionValues.values.put(f10722R0, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(f10723S0, transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(f10724T0, iArr);
    }

    /* renamed from: M */
    public final C1510c m6643M(TransitionValues transitionValues, TransitionValues transitionValues2) {
        C1510c c1510c = new C1510c();
        c1510c.f10738a = false;
        c1510c.f10739b = false;
        if (transitionValues == null || !transitionValues.values.containsKey(f10722R0)) {
            c1510c.f10740c = -1;
            c1510c.f10742e = null;
        } else {
            c1510c.f10740c = ((Integer) transitionValues.values.get(f10722R0)).intValue();
            c1510c.f10742e = (ViewGroup) transitionValues.values.get(f10723S0);
        }
        if (transitionValues2 == null || !transitionValues2.values.containsKey(f10722R0)) {
            c1510c.f10741d = -1;
            c1510c.f10743f = null;
        } else {
            c1510c.f10741d = ((Integer) transitionValues2.values.get(f10722R0)).intValue();
            c1510c.f10743f = (ViewGroup) transitionValues2.values.get(f10723S0);
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i = c1510c.f10740c;
            int i2 = c1510c.f10741d;
            if (i == i2 && c1510c.f10742e == c1510c.f10743f) {
                return c1510c;
            }
            if (i != i2) {
                if (i == 0) {
                    c1510c.f10739b = false;
                    c1510c.f10738a = true;
                } else if (i2 == 0) {
                    c1510c.f10739b = true;
                    c1510c.f10738a = true;
                }
            } else if (c1510c.f10743f == null) {
                c1510c.f10739b = false;
                c1510c.f10738a = true;
            } else if (c1510c.f10742e == null) {
                c1510c.f10739b = true;
                c1510c.f10738a = true;
            }
        } else if (transitionValues == null && c1510c.f10741d == 0) {
            c1510c.f10739b = true;
            c1510c.f10738a = true;
        } else if (transitionValues2 == null && c1510c.f10740c == 0) {
            c1510c.f10739b = false;
            c1510c.f10738a = true;
        }
        return c1510c;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6642L(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m6642L(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        C1510c m6643M = m6643M(transitionValues, transitionValues2);
        if (!m6643M.f10738a) {
            return null;
        }
        if (m6643M.f10742e == null && m6643M.f10743f == null) {
            return null;
        }
        return m6643M.f10739b ? onAppear(viewGroup, transitionValues, m6643M.f10740c, transitionValues2, m6643M.f10741d) : onDisappear(viewGroup, transitionValues, m6643M.f10740c, transitionValues2, m6643M.f10741d);
    }

    public int getMode() {
        return this.f10726Q0;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f10725U0;
    }

    @Override // androidx.transition.Transition
    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey(f10722R0) != transitionValues.values.containsKey(f10722R0)) {
            return false;
        }
        C1510c m6643M = m6643M(transitionValues, transitionValues2);
        if (m6643M.f10738a) {
            return m6643M.f10740c == 0 || m6643M.f10741d == 0;
        }
        return false;
    }

    public boolean isVisible(@Nullable TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get(f10722R0)).intValue() == 0 && ((View) transitionValues.values.get(f10723S0)) != null;
    }

    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    public void setMode(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f10726Q0 = i;
    }

    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, int i, @Nullable TransitionValues transitionValues2, int i2) {
        if ((this.f10726Q0 & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (m6643M(m6602q(view, false), getTransitionValues(view, false)).f10738a) {
                return null;
            }
        }
        return onAppear(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x007f, code lost:
    
        if (r10.f10637J != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator onDisappear(@androidx.annotation.NonNull android.view.ViewGroup r11, @androidx.annotation.Nullable androidx.transition.TransitionValues r12, int r13, @androidx.annotation.Nullable androidx.transition.TransitionValues r14, int r15) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.onDisappear(android.view.ViewGroup, androidx.transition.TransitionValues, int, androidx.transition.TransitionValues, int):android.animation.Animator");
    }

    public Visibility(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10726Q0 = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10760e);
        int namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (namedInt != 0) {
            setMode(namedInt);
        }
    }
}
