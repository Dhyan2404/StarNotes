package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.sunia.HTREnginev2.c5o;
import com.sunia.HTREnginev2.qfh;
import com.sunia.HTREnginev2.tfh;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: k0 */
    public static final int f30189k0 = 0;

    /* renamed from: q0 */
    public static final int f30190q0 = 1;

    /* renamed from: t0 */
    public static final int f30191t0 = 2;

    /* renamed from: u0 */
    public static final int f30192u0 = 4;

    /* renamed from: v0 */
    public static final int f30193v0 = 8;

    /* renamed from: w0 */
    public static final int f30194w0 = C5139R.style.Widget_Design_AppBarLayout;

    /* renamed from: x0 */
    public static final int f30195x0 = -1;

    /* renamed from: J */
    @Nullable
    public Integer f30196J;

    /* renamed from: O */
    public final float f30197O;

    /* renamed from: Q */
    public Behavior f30198Q;

    /* renamed from: e */
    public int f30199e;

    /* renamed from: f */
    public int f30200f;

    /* renamed from: g */
    public int f30201g;

    /* renamed from: h */
    public int f30202h;

    /* renamed from: i */
    public boolean f30203i;

    /* renamed from: j */
    public int f30204j;

    /* renamed from: k */
    @Nullable
    public WindowInsetsCompat f30205k;

    /* renamed from: l */
    public List<BaseOnOffsetChangedListener> f30206l;

    /* renamed from: m */
    public boolean f30207m;

    /* renamed from: n */
    public boolean f30208n;

    /* renamed from: o */
    public boolean f30209o;

    /* renamed from: p */
    public boolean f30210p;

    /* renamed from: q */
    @IdRes
    public int f30211q;

    /* renamed from: r */
    @Nullable
    public WeakReference<View> f30212r;

    /* renamed from: s */
    public final boolean f30213s;

    /* renamed from: t */
    @Nullable
    public ValueAnimator f30214t;

    /* renamed from: u */
    @Nullable
    public ValueAnimator.AnimatorUpdateListener f30215u;

    /* renamed from: v */
    public final List<LiftOnScrollListener> f30216v;

    /* renamed from: w */
    public final long f30217w;

    /* renamed from: x */
    public final TimeInterpolator f30218x;

    /* renamed from: y */
    public int[] f30219y;

    /* renamed from: z */
    @Nullable
    public Drawable f30220z;

    /* loaded from: classes6.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends qfh<T> {

        /* renamed from: v */
        public static final int f30221v = 600;

        /* renamed from: p */
        public int f30222p;

        /* renamed from: q */
        public int f30223q;

        /* renamed from: r */
        public ValueAnimator f30224r;

        /* renamed from: s */
        public SavedState f30225s;

        /* renamed from: t */
        @Nullable
        public WeakReference<View> f30226t;

        /* renamed from: u */
        public BaseDragCallback f30227u;

        /* loaded from: classes6.dex */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t);
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        /* loaded from: classes6.dex */
        public class C5141a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: e */
            public final /* synthetic */ CoordinatorLayout f30228e;

            /* renamed from: f */
            public final /* synthetic */ AppBarLayout f30229f;

            public C5141a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f30228e = coordinatorLayout;
                this.f30229f = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                BaseBehavior.this.m56691i(this.f30228e, this.f30229f, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$b */
        /* loaded from: classes6.dex */
        public class C5142b extends AccessibilityDelegateCompat {

            /* renamed from: d */
            public final /* synthetic */ AppBarLayout f30231d;

            /* renamed from: e */
            public final /* synthetic */ CoordinatorLayout f30232e;

            public C5142b(AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout) {
                this.f30231d = appBarLayout;
                this.f30232e = coordinatorLayout;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                View m22905y;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                if (this.f30231d.getTotalScrollRange() == 0 || (m22905y = BaseBehavior.this.m22905y(this.f30232e)) == null || !BaseBehavior.this.m22902u(this.f30231d)) {
                    return;
                }
                if (BaseBehavior.this.mo22893f() != (-this.f30231d.getTotalScrollRange())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.setScrollable(true);
                }
                if (BaseBehavior.this.mo22893f() != 0) {
                    if (!m22905y.canScrollVertically(-1)) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    } else if ((-this.f30231d.getDownNestedPreScrollRange()) != 0) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                if (i == 4096) {
                    this.f30231d.setExpanded(false);
                    return true;
                }
                if (i != 8192) {
                    return super.performAccessibilityAction(view, i, bundle);
                }
                if (BaseBehavior.this.mo22893f() != 0) {
                    View m22905y = BaseBehavior.this.m22905y(this.f30232e);
                    if (!m22905y.canScrollVertically(-1)) {
                        this.f30231d.setExpanded(true);
                        return true;
                    }
                    int i2 = -this.f30231d.getDownNestedPreScrollRange();
                    if (i2 != 0) {
                        BaseBehavior.this.onNestedPreScroll(this.f30232e, (CoordinatorLayout) this.f30231d, m22905y, 0, i2, new int[]{0, 0}, 1);
                        return true;
                    }
                }
                return false;
            }
        }

        public BaseBehavior() {
        }

        /* renamed from: t */
        public static boolean m22878t(int i, int i2) {
            return (i & i2) == i2;
        }

        @Nullable
        /* renamed from: w */
        public static View m22879w(@NonNull AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: A, reason: merged with bridge method [inline-methods] */
        public int mo22892e(@NonNull T t) {
            return t.getTotalScrollRange();
        }

        /* renamed from: B */
        public final int m22881B(@NonNull T t, int i) {
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (scrollInterpolator != null) {
                    int scrollFlags = layoutParams.getScrollFlags();
                    if ((scrollFlags & 1) != 0) {
                        i2 = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        if ((scrollFlags & 2) != 0) {
                            i2 -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i2 -= t.getTopInset();
                    }
                    if (i2 > 0) {
                        float f = i2;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * scrollInterpolator.getInterpolation((abs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        @VisibleForTesting
        /* renamed from: C */
        public boolean m22882C() {
            ValueAnimator valueAnimator = this.f30224r;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: D, reason: merged with bridge method [inline-methods] */
        public void mo22894g(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            m22888I(coordinatorLayout, t);
            if (t.isLiftOnScroll()) {
                t.m22868t(t.m22871w(m22903v(coordinatorLayout)));
            }
        }

        /* renamed from: E */
        public void m22884E(@Nullable SavedState savedState, boolean z) {
            if (this.f30225s == null || z) {
                this.f30225s = savedState;
            }
        }

        @Nullable
        /* renamed from: F */
        public SavedState m22885F(@Nullable Parcelable parcelable, @NonNull T t) {
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z = topAndBottomOffset == 0;
                    savedState.fullyExpanded = z;
                    savedState.fullyScrolled = !z && (-topAndBottomOffset) >= t.getTotalScrollRange();
                    savedState.firstVisibleChildIndex = i;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: G, reason: merged with bridge method [inline-methods] */
        public int mo22895j(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3) {
            int mo22893f = mo22893f();
            int i4 = 0;
            if (i2 == 0 || mo22893f < i2 || mo22893f > i3) {
                this.f30222p = 0;
            } else {
                int clamp = MathUtils.clamp(i, i2, i3);
                if (mo22893f != clamp) {
                    int m22881B = t.m22856f() ? m22881B(t, clamp) : clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(m22881B);
                    int i5 = mo22893f - clamp;
                    this.f30222p = clamp - m22881B;
                    if (topAndBottomOffset) {
                        while (i4 < t.getChildCount()) {
                            LayoutParams layoutParams = (LayoutParams) t.getChildAt(i4).getLayoutParams();
                            ChildScrollEffect scrollEffect = layoutParams.getScrollEffect();
                            if (scrollEffect != null && (layoutParams.getScrollFlags() & 1) != 0) {
                                scrollEffect.onOffsetChanged(t, t.getChildAt(i4), getTopAndBottomOffset());
                            }
                            i4++;
                        }
                    }
                    if (!topAndBottomOffset && t.m22856f()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.m22863o(getTopAndBottomOffset());
                    m22889J(coordinatorLayout, t, clamp, clamp < mo22893f ? -1 : 1, false);
                    i4 = i5;
                }
            }
            m22896n(coordinatorLayout, t);
            return i4;
        }

        /* renamed from: H */
        public final boolean m22887H(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).getOverlayTop() != 0;
                }
            }
            return false;
        }

        /* renamed from: I */
        public final void m22888I(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            int topInset = t.getTopInset() + t.getPaddingTop();
            int mo22893f = mo22893f() - topInset;
            int m22904x = m22904x(t, mo22893f);
            if (m22904x >= 0) {
                View childAt = t.getChildAt(m22904x);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i = -childAt.getTop();
                    int i2 = -childAt.getBottom();
                    if (m22904x == 0 && ViewCompat.getFitsSystemWindows(t) && ViewCompat.getFitsSystemWindows(childAt)) {
                        i -= t.getTopInset();
                    }
                    if (m22878t(scrollFlags, 2)) {
                        i2 += ViewCompat.getMinimumHeight(childAt);
                    } else if (m22878t(scrollFlags, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i2;
                        if (mo22893f < minimumHeight) {
                            i = minimumHeight;
                        } else {
                            i2 = minimumHeight;
                        }
                    }
                    if (m22878t(scrollFlags, 32)) {
                        i += ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i2 -= ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    m22897o(coordinatorLayout, t, MathUtils.clamp(m22899q(mo22893f, i2, i) + topInset, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* renamed from: J */
        public final void m22889J(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, boolean z) {
            View m22879w = m22879w(t, i);
            boolean z2 = false;
            if (m22879w != null) {
                int scrollFlags = ((LayoutParams) m22879w.getLayoutParams()).getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(m22879w);
                    if (i2 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i) < (m22879w.getBottom() - minimumHeight) - t.getTopInset()) : (-i) >= (m22879w.getBottom() - minimumHeight) - t.getTopInset()) {
                        z2 = true;
                    }
                }
            }
            if (t.isLiftOnScroll()) {
                z2 = t.m22871w(m22903v(coordinatorLayout));
            }
            boolean m22868t = t.m22868t(z2);
            if (z || (m22868t && m22887H(coordinatorLayout, t))) {
                if (t.getBackground() != null) {
                    t.getBackground().jumpToCurrentState();
                }
                if (t.getForeground() != null) {
                    t.getForeground().jumpToCurrentState();
                }
                if (t.getStateListAnimator() != null) {
                    t.getStateListAnimator().jumpToCurrentState();
                }
            }
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: f */
        public int mo22893f() {
            return getTopAndBottomOffset() + this.f30222p;
        }

        /* renamed from: n */
        public final void m22896n(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            if (ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                return;
            }
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, new C5142b(t, coordinatorLayout));
        }

        /* renamed from: o */
        public final void m22897o(CoordinatorLayout coordinatorLayout, @NonNull T t, int i, float f) {
            int abs = Math.abs(mo22893f() - i);
            float abs2 = Math.abs(f);
            m22898p(coordinatorLayout, t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* renamed from: p */
        public final void m22898p(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int mo22893f = mo22893f();
            if (mo22893f == i) {
                ValueAnimator valueAnimator = this.f30224r;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f30224r.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f30224r;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f30224r = valueAnimator3;
                valueAnimator3.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.f30224r.addUpdateListener(new C5141a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f30224r.setDuration(Math.min(i2, 600));
            this.f30224r.setIntValues(mo22893f, i);
            this.f30224r.start();
        }

        /* renamed from: q */
        public final int m22899q(int i, int i2, int i3) {
            return i < (i2 + i3) / 2 ? i2 : i3;
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: r, reason: merged with bridge method [inline-methods] */
        public boolean mo22890a(T t) {
            BaseDragCallback baseDragCallback = this.f30227u;
            if (baseDragCallback != null) {
                return baseDragCallback.canDrag(t);
            }
            WeakReference<View> weakReference = this.f30226t;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* renamed from: s */
        public final boolean m22901s(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view) {
            return t.m22858h() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.f30227u = baseDragCallback;
        }

        /* renamed from: u */
        public final boolean m22902u(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (((LayoutParams) appBarLayout.getChildAt(i).getLayoutParams()).f30240a != 0) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        /* renamed from: v */
        public final View m22903v(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: x */
        public final int m22904x(@NonNull T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m22878t(layoutParams.getScrollFlags(), 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        @Nullable
        /* renamed from: y */
        public final View m22905y(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // com.sunia.HTREnginev2.qfh
        /* renamed from: z, reason: merged with bridge method [inline-methods] */
        public int mo22891d(@NonNull T t) {
            return (-t.getDownNestedScrollRange()) + t.getTopInset();
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.sunia.HTREnginev2.i4o, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i) {
            int round;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            SavedState savedState = this.f30225s;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i2 = -t.getUpNestedPreScrollRange();
                        if (z) {
                            m22897o(coordinatorLayout, t, i2, 0.0f);
                        } else {
                            m56691i(coordinatorLayout, t, i2);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z) {
                            m22897o(coordinatorLayout, t, 0, 0.0f);
                        } else {
                            m56691i(coordinatorLayout, t, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                m56691i(coordinatorLayout, t, -t.getTotalScrollRange());
            } else if (savedState.fullyExpanded) {
                m56691i(coordinatorLayout, t, 0);
            } else {
                View childAt = t.getChildAt(savedState.firstVisibleChildIndex);
                int i3 = -childAt.getBottom();
                if (this.f30225s.firstVisibleChildAtMinimumHeight) {
                    round = ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                } else {
                    round = Math.round(childAt.getHeight() * this.f30225s.firstVisibleChildPercentageShown);
                }
                m56691i(coordinatorLayout, t, i3 + round);
            }
            t.m22865q();
            this.f30225s = null;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t.getTotalScrollRange(), 0));
            m22889J(coordinatorLayout, t, getTopAndBottomOffset(), 0, true);
            t.m22863o(getTopAndBottomOffset());
            m22896n(coordinatorLayout, t);
            return onLayoutChild;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    i4 = -t.getTotalScrollRange();
                    i5 = t.getDownNestedPreScrollRange() + i4;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                int i6 = i4;
                int i7 = i5;
                if (i6 != i7) {
                    iArr[1] = m56690h(coordinatorLayout, t, i2, i6, i7);
                }
            }
            if (t.isLiftOnScroll()) {
                t.m22868t(t.m22871w(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m56690h(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                m22896n(coordinatorLayout, t);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                m22884E((SavedState) parcelable, true);
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, this.f30225s.getSuperState());
            } else {
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, parcelable);
                this.f30225s = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t);
            SavedState m22885F = m22885F(onSaveInstanceState, t);
            return m22885F == null ? onSaveInstanceState : m22885F;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.isLiftOnScroll() || m22901s(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.f30224r) != null) {
                valueAnimator.cancel();
            }
            this.f30226t = null;
            this.f30223q = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i) {
            if (this.f30223q == 0 || i == 1) {
                m22888I(coordinatorLayout, t);
                if (t.isLiftOnScroll()) {
                    t.m22868t(t.m22871w(view));
                }
            }
            this.f30226t = new WeakReference<>(view);
        }

        /* loaded from: classes6.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new C5140a();
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$a */
            /* loaded from: classes6.dex */
            public class C5140a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                @Nullable
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                @NonNull
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                @NonNull
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t, int i);
    }

    /* loaded from: classes6.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes6.dex */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.sunia.HTREnginev2.qfh, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.sunia.HTREnginev2.qfh, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class ChildScrollEffect {
        public abstract void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f);
    }

    /* loaded from: classes6.dex */
    public static class CompressChildScrollEffect extends ChildScrollEffect {

        /* renamed from: c */
        public static final float f30234c = 0.3f;

        /* renamed from: a */
        public final Rect f30235a = new Rect();

        /* renamed from: b */
        public final Rect f30236b = new Rect();

        /* renamed from: a */
        public static void m22910a(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ChildScrollEffect
        public void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f) {
            m22910a(this.f30235a, appBarLayout, view);
            float abs = this.f30235a.top - Math.abs(f);
            if (abs > 0.0f) {
                ViewCompat.setClipBounds(view, null);
                view.setTranslationY(0.0f);
                view.setVisibility(0);
                return;
            }
            float clamp = 1.0f - MathUtils.clamp(Math.abs(abs / this.f30235a.height()), 0.0f, 1.0f);
            float height = (-abs) - ((this.f30235a.height() * 0.3f) * (1.0f - (clamp * clamp)));
            view.setTranslationY(height);
            view.getDrawingRect(this.f30236b);
            this.f30236b.offset(0, (int) (-height));
            if (height >= this.f30236b.height()) {
                view.setVisibility(4);
            } else {
                view.setVisibility(0);
            }
            ViewCompat.setClipBounds(view, this.f30236b);
        }
    }

    /* loaded from: classes6.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public static final int SCROLL_EFFECT_COMPRESS = 1;
        public static final int SCROLL_EFFECT_NONE = 0;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;

        /* renamed from: d */
        public static final int f30237d = 5;

        /* renamed from: e */
        public static final int f30238e = 17;

        /* renamed from: f */
        public static final int f30239f = 10;

        /* renamed from: a */
        public int f30240a;

        /* renamed from: b */
        public ChildScrollEffect f30241b;

        /* renamed from: c */
        public Interpolator f30242c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes6.dex */
        public @interface ScrollEffect {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes6.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f30240a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.AppBarLayout_Layout);
            this.f30240a = obtainStyledAttributes.getInt(C5139R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            setScrollEffect(obtainStyledAttributes.getInt(C5139R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0));
            if (obtainStyledAttributes.hasValue(C5139R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f30242c = android.view.animation.AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C5139R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @Nullable
        /* renamed from: a */
        public final ChildScrollEffect m22911a(int i) {
            if (i != 1) {
                return null;
            }
            return new CompressChildScrollEffect();
        }

        /* renamed from: b */
        public boolean m22912b() {
            int i = this.f30240a;
            return (i & 1) == 1 && (i & 10) != 0;
        }

        @Nullable
        public ChildScrollEffect getScrollEffect() {
            return this.f30241b;
        }

        public int getScrollFlags() {
            return this.f30240a;
        }

        public Interpolator getScrollInterpolator() {
            return this.f30242c;
        }

        public void setScrollEffect(@Nullable ChildScrollEffect childScrollEffect) {
            this.f30241b = childScrollEffect;
        }

        public void setScrollFlags(int i) {
            this.f30240a = i;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.f30242c = interpolator;
        }

        public void setScrollEffect(int i) {
            this.f30241b = m22911a(i);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f30240a = 1;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.f30240a = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30240a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f30240a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30240a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f30240a = 1;
            this.f30240a = layoutParams.f30240a;
            this.f30241b = layoutParams.f30241b;
            this.f30242c = layoutParams.f30242c;
        }
    }

    /* loaded from: classes6.dex */
    public interface LiftOnScrollListener {
        void onUpdate(@Dimension float f, @ColorInt int i);
    }

    /* loaded from: classes6.dex */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    /* loaded from: classes6.dex */
    public static class ScrollingViewBehavior extends tfh {
        public ScrollingViewBehavior() {
        }

        /* renamed from: h */
        public static int m22913h(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).mo22893f();
            }
            return 0;
        }

        @Override // com.sunia.HTREnginev2.tfh
        /* renamed from: c */
        public float mo22915c(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int m22913h = m22913h(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + m22913h > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (m22913h / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.sunia.HTREnginev2.tfh
        /* renamed from: d */
        public int mo22916d(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo22916d(view);
        }

        @Override // com.sunia.HTREnginev2.tfh
        @Nullable
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public AppBarLayout mo22914a(@NonNull List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        /* renamed from: i */
        public final void m22918i(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f30222p) + m57371e()) - m57370b(view2));
            }
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        /* renamed from: j */
        public final void m22919j(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.m22868t(appBarLayout.m22871w(view));
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            m22918i(view, view2);
            m22919j(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // com.sunia.HTREnginev2.i4o, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        @Override // com.sunia.HTREnginev2.tfh, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z) {
            AppBarLayout mo22914a = mo22914a(coordinatorLayout.getDependencies(view));
            if (mo22914a != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                Rect rect3 = this.f85264h;
                rect3.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect3.contains(rect2)) {
                    mo22914a.setExpanded(false, !z);
                    return true;
                }
            }
            return false;
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.sunia.HTREnginev2.i4o
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$a */
    /* loaded from: classes6.dex */
    public class C5143a implements OnApplyWindowInsetsListener {
        public C5143a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.m22864p(windowInsetsCompat);
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m22851m(ColorStateList colorStateList, ColorStateList colorStateList2, MaterialShapeDrawable materialShapeDrawable, Integer num, ValueAnimator valueAnimator) {
        Integer num2;
        int layer = MaterialColors.layer(colorStateList.getDefaultColor(), colorStateList2.getDefaultColor(), ((Float) valueAnimator.getAnimatedValue()).floatValue());
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(layer));
        if (this.f30220z != null && (num2 = this.f30196J) != null && num2.equals(num)) {
            DrawableCompat.setTint(this.f30220z, layer);
        }
        if (this.f30216v.isEmpty()) {
            return;
        }
        for (LiftOnScrollListener liftOnScrollListener : this.f30216v) {
            if (materialShapeDrawable.getFillColor() != null) {
                liftOnScrollListener.onUpdate(0.0f, layer);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m22852n(MaterialShapeDrawable materialShapeDrawable, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        materialShapeDrawable.setElevation(floatValue);
        Drawable drawable = this.f30220z;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).setElevation(floatValue);
        }
        Iterator<LiftOnScrollListener> it2 = this.f30216v.iterator();
        while (it2.hasNext()) {
            it2.next().onUpdate(floatValue, materialShapeDrawable.getResolvedTintColor());
        }
    }

    public void addLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        this.f30216v.add(liftOnScrollListener);
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.f30206l == null) {
            this.f30206l = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.f30206l.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.f30206l.add(baseOnOffsetChangedListener);
    }

    /* renamed from: c */
    public final void m22853c() {
        WeakReference<View> weakReference = this.f30212r;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f30212r = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearLiftOnScrollListener() {
        this.f30216v.clear();
    }

    @Nullable
    /* renamed from: d */
    public final Integer m22854d() {
        Drawable drawable = this.f30220z;
        if (drawable instanceof MaterialShapeDrawable) {
            return Integer.valueOf(((MaterialShapeDrawable) drawable).getResolvedTintColor());
        }
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(drawable);
        if (colorStateListOrNull != null) {
            return Integer.valueOf(colorStateListOrNull.getDefaultColor());
        }
        return null;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (m22870v()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f30199e);
            this.f30220z.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f30220z;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Nullable
    /* renamed from: e */
    public final View m22855e(@Nullable View view) {
        int i;
        if (this.f30212r == null && (i = this.f30211q) != -1) {
            View findViewById = view != null ? view.findViewById(i) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.f30211q);
            }
            if (findViewById != null) {
                this.f30212r = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.f30212r;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: f */
    public boolean m22856f() {
        return this.f30203i;
    }

    /* renamed from: g */
    public final boolean m22857g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).m22912b()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.f30198Q = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int i;
        int minimumHeight;
        int i2 = this.f30201g;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f30240a;
                if ((i4 & 5) != 5) {
                    if (i3 > 0) {
                        break;
                    }
                } else {
                    int i5 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((i4 & 8) != 0) {
                        minimumHeight = ViewCompat.getMinimumHeight(childAt);
                    } else if ((i4 & 2) != 0) {
                        minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                    } else {
                        i = i5 + measuredHeight;
                        if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                            i = Math.min(i, measuredHeight - getTopInset());
                        }
                        i3 += i;
                    }
                    i = i5 + minimumHeight;
                    if (childCount == 0) {
                        i = Math.min(i, measuredHeight - getTopInset());
                    }
                    i3 += i;
                }
            }
        }
        int max = Math.max(0, i3);
        this.f30201g = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i = this.f30202h;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                int i4 = layoutParams.f30240a;
                if ((i4 & 1) == 0) {
                    break;
                }
                i3 += measuredHeight;
                if ((i4 & 2) != 0) {
                    i3 -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f30202h = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f30211q;
    }

    @Nullable
    public MaterialShapeDrawable getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            return (MaterialShapeDrawable) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f30204j;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f30220z;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f30205k;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f30200f;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f30240a;
                if ((i4 & 1) == 0) {
                    break;
                }
                i3 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if (i2 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                    i3 -= getTopInset();
                }
                if ((i4 & 2) != 0) {
                    i3 -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f30200f = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* renamed from: h */
    public boolean m22858h() {
        return getTotalScrollRange() != 0;
    }

    /* renamed from: i */
    public final void m22859i(final MaterialShapeDrawable materialShapeDrawable, @NonNull final ColorStateList colorStateList, @NonNull final ColorStateList colorStateList2) {
        final Integer colorOrNull = MaterialColors.getColorOrNull(getContext(), C5139R.attr.colorSurface);
        this.f30215u = new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.vb
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppBarLayout.this.m22851m(colorStateList, colorStateList2, materialShapeDrawable, colorOrNull, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, materialShapeDrawable);
    }

    public boolean isLiftOnScroll() {
        return this.f30210p;
    }

    public boolean isLifted() {
        return this.f30209o;
    }

    /* renamed from: j */
    public final void m22860j(Context context, final MaterialShapeDrawable materialShapeDrawable) {
        materialShapeDrawable.initializeElevationOverlay(context);
        this.f30215u = new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.wb
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppBarLayout.this.m22852n(materialShapeDrawable, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, materialShapeDrawable);
    }

    /* renamed from: k */
    public final void m22861k() {
        Behavior behavior = this.f30198Q;
        BaseBehavior.SavedState m22885F = (behavior == null || this.f30200f == -1 || this.f30204j != 0) ? null : behavior.m22885F(AbsSavedState.EMPTY_STATE, this);
        this.f30200f = -1;
        this.f30201g = -1;
        this.f30202h = -1;
        if (m22885F != null) {
            this.f30198Q.m22884E(m22885F, false);
        }
    }

    /* renamed from: l */
    public final boolean m22862l() {
        return getBackground() instanceof MaterialShapeDrawable;
    }

    /* renamed from: o */
    public void m22863o(int i) {
        this.f30199e = i;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<BaseOnOffsetChangedListener> list = this.f30206l;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.f30206l.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f30219y == null) {
            this.f30219y = new int[4];
        }
        int[] iArr = this.f30219y;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f30208n;
        int i2 = C5139R.attr.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (z && this.f30209o) ? C5139R.attr.state_lifted : -C5139R.attr.state_lifted;
        int i3 = C5139R.attr.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (z && this.f30209o) ? C5139R.attr.state_collapsed : -C5139R.attr.state_collapsed;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m22853c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (ViewCompat.getFitsSystemWindows(this) && m22872x()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        m22861k();
        this.f30203i = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).getScrollInterpolator() != null) {
                this.f30203i = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.f30220z;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f30207m) {
            return;
        }
        if (!this.f30210p && !m22857g()) {
            z2 = false;
        }
        m22867s(z2);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && m22872x()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m22861k();
    }

    /* renamed from: p */
    public WindowInsetsCompat m22864p(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f30205k, windowInsetsCompat2)) {
            this.f30205k = windowInsetsCompat2;
            m22874z();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    /* renamed from: q */
    public void m22865q() {
        this.f30204j = 0;
    }

    /* renamed from: r */
    public final void m22866r(boolean z, boolean z2, boolean z3) {
        this.f30204j = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    public boolean removeLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        return this.f30216v.remove(liftOnScrollListener);
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.f30206l;
        if (list == null || baseOnOffsetChangedListener == null) {
            return;
        }
        list.remove(baseOnOffsetChangedListener);
    }

    /* renamed from: s */
    public final boolean m22867s(boolean z) {
        if (this.f30208n == z) {
            return false;
        }
        this.f30208n = z;
        refreshDrawableState();
        return true;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.f30210p = z;
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.f30211q = -1;
        if (view == null) {
            m22853c();
        } else {
            this.f30212r = new WeakReference<>(view);
        }
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i) {
        this.f30211q = i;
        m22853c();
    }

    public boolean setLiftable(boolean z) {
        this.f30207m = true;
        return m22867s(z);
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.f30207m = z;
    }

    public boolean setLifted(boolean z) {
        return m22869u(z, true);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f30220z;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f30220z = drawable != null ? drawable.mutate() : null;
            this.f30196J = m22854d();
            Drawable drawable3 = this.f30220z;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f30220z.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f30220z, ViewCompat.getLayoutDirection(this));
                this.f30220z.setVisible(getVisibility() == 0, false);
                this.f30220z.setCallback(this);
            }
            m22874z();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        c5o.m53391b(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f30220z;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* renamed from: t */
    public boolean m22868t(boolean z) {
        return m22869u(z, !this.f30207m);
    }

    /* renamed from: u */
    public boolean m22869u(boolean z, boolean z2) {
        if (!z2 || this.f30209o == z) {
            return false;
        }
        this.f30209o = z;
        refreshDrawableState();
        if (!m22862l()) {
            return true;
        }
        if (this.f30213s) {
            m22873y(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f30210p) {
            return true;
        }
        m22873y(z ? 0.0f : this.f30197O, z ? this.f30197O : 0.0f);
        return true;
    }

    /* renamed from: v */
    public final boolean m22870v() {
        return this.f30220z != null && getTopInset() > 0;
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f30220z;
    }

    /* renamed from: w */
    public boolean m22871w(@Nullable View view) {
        View m22855e = m22855e(view);
        if (m22855e != null) {
            view = m22855e;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    /* renamed from: x */
    public final boolean m22872x() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
    }

    /* renamed from: y */
    public final void m22873y(float f, float f2) {
        ValueAnimator valueAnimator = this.f30214t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.f30214t = ofFloat;
        ofFloat.setDuration(this.f30217w);
        this.f30214t.setInterpolator(this.f30218x);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f30215u;
        if (animatorUpdateListener != null) {
            this.f30214t.addUpdateListener(animatorUpdateListener);
        }
        this.f30214t.start();
    }

    /* renamed from: z */
    public final void m22874z() {
        setWillNotDraw(!m22870v());
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.appBarLayoutStyle);
    }

    public void setExpanded(boolean z, boolean z2) {
        m22866r(z, z2, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            r9 = this;
            int r4 = com.google.android.material.appbar.AppBarLayout.f30194w0
            android.content.Context r10 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r10, r11, r12, r4)
            r9.<init>(r10, r11, r12)
            r10 = -1
            r9.f30200f = r10
            r9.f30201g = r10
            r9.f30202h = r10
            r6 = 0
            r9.f30204j = r6
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r9.f30216v = r0
            android.content.Context r7 = r9.getContext()
            r8 = 1
            r9.setOrientation(r8)
            android.view.ViewOutlineProvider r0 = r9.getOutlineProvider()
            android.view.ViewOutlineProvider r1 = android.view.ViewOutlineProvider.BACKGROUND
            if (r0 != r1) goto L2d
            com.sunia.HTREnginev2.c5o.m53390a(r9)
        L2d:
            com.sunia.HTREnginev2.c5o.m53392c(r9, r11, r12, r4)
            int[] r2 = com.google.android.material.C5139R.styleable.AppBarLayout
            int[] r5 = new int[r6]
            r0 = r7
            r1 = r11
            r3 = r12
            android.content.res.TypedArray r11 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_android_background
            android.graphics.drawable.Drawable r12 = r11.getDrawable(r12)
            androidx.core.view.ViewCompat.setBackground(r9, r12)
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_liftOnScrollColor
            android.content.res.ColorStateList r12 = com.google.android.material.resources.MaterialResources.getColorStateList(r7, r11, r12)
            if (r12 == 0) goto L4d
            goto L4e
        L4d:
            r8 = r6
        L4e:
            r9.f30213s = r8
            android.graphics.drawable.Drawable r0 = r9.getBackground()
            android.content.res.ColorStateList r0 = com.google.android.material.drawable.DrawableUtils.getColorStateListOrNull(r0)
            if (r0 == 0) goto L6b
            com.google.android.material.shape.MaterialShapeDrawable r1 = new com.google.android.material.shape.MaterialShapeDrawable
            r1.<init>()
            r1.setFillColor(r0)
            if (r12 == 0) goto L68
            r9.m22859i(r1, r0, r12)
            goto L6b
        L68:
            r9.m22860j(r7, r1)
        L6b:
            int r12 = com.google.android.material.C5139R.attr.motionDurationMedium2
            android.content.res.Resources r0 = r9.getResources()
            int r1 = com.google.android.material.C5139R.integer.app_bar_elevation_anim_duration
            int r0 = r0.getInteger(r1)
            int r12 = com.google.android.material.motion.MotionUtils.resolveThemeDuration(r7, r12, r0)
            long r0 = (long) r12
            r9.f30217w = r0
            int r12 = com.google.android.material.C5139R.attr.motionEasingStandardInterpolator
            android.animation.TimeInterpolator r0 = com.google.android.material.animation.AnimationUtils.LINEAR_INTERPOLATOR
            android.animation.TimeInterpolator r12 = com.google.android.material.motion.MotionUtils.resolveThemeInterpolator(r7, r12, r0)
            r9.f30218x = r12
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_expanded
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto L99
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_expanded
            boolean r12 = r11.getBoolean(r12, r6)
            r9.m22866r(r12, r6, r6)
        L99:
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_elevation
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto Lab
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_elevation
            int r12 = r11.getDimensionPixelSize(r12, r6)
            float r12 = (float) r12
            com.sunia.HTREnginev2.c5o.m53391b(r9, r12)
        Lab:
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_android_keyboardNavigationCluster
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto Lbc
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_android_keyboardNavigationCluster
            boolean r12 = r11.getBoolean(r12, r6)
            r9.setKeyboardNavigationCluster(r12)
        Lbc:
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_android_touchscreenBlocksFocus
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto Lcd
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_android_touchscreenBlocksFocus
            boolean r12 = r11.getBoolean(r12, r6)
            r9.setTouchscreenBlocksFocus(r12)
        Lcd:
            android.content.res.Resources r12 = r9.getResources()
            int r0 = com.google.android.material.C5139R.dimen.design_appbar_elevation
            float r12 = r12.getDimension(r0)
            r9.f30197O = r12
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_liftOnScroll
            boolean r12 = r11.getBoolean(r12, r6)
            r9.f30210p = r12
            int r12 = com.google.android.material.C5139R.styleable.AppBarLayout_liftOnScrollTargetViewId
            int r10 = r11.getResourceId(r12, r10)
            r9.f30211q = r10
            int r10 = com.google.android.material.C5139R.styleable.AppBarLayout_statusBarForeground
            android.graphics.drawable.Drawable r10 = r11.getDrawable(r10)
            r9.setStatusBarForeground(r10)
            r11.recycle()
            com.google.android.material.appbar.AppBarLayout$a r10 = new com.google.android.material.appbar.AppBarLayout$a
            r10.<init>()
            androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
