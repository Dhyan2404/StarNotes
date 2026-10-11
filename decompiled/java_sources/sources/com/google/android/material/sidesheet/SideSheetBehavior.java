package com.google.android.material.sidesheet;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.sunia.HTREnginev2.oom;
import com.sunia.HTREnginev2.pxi;
import com.sunia.HTREnginev2.unm;
import com.sunia.HTREnginev2.vrl;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements Sheet<SideSheetCallback> {

    /* renamed from: k0 */
    public static final int f32342k0 = 500;

    /* renamed from: q0 */
    public static final float f32343q0 = 0.5f;

    /* renamed from: t0 */
    public static final float f32344t0 = 0.1f;

    /* renamed from: u0 */
    public static final int f32345u0 = -1;

    /* renamed from: J */
    public int f32347J;

    /* renamed from: O */
    @NonNull
    public final Set<SideSheetCallback> f32348O;

    /* renamed from: Q */
    public final ViewDragHelper.Callback f32349Q;

    /* renamed from: e */
    public unm f32350e;

    /* renamed from: f */
    public float f32351f;

    /* renamed from: g */
    @Nullable
    public MaterialShapeDrawable f32352g;

    /* renamed from: h */
    @Nullable
    public ColorStateList f32353h;

    /* renamed from: i */
    public ShapeAppearanceModel f32354i;

    /* renamed from: j */
    public final SideSheetBehavior<V>.C5381c f32355j;

    /* renamed from: k */
    public float f32356k;

    /* renamed from: l */
    public boolean f32357l;

    /* renamed from: m */
    public int f32358m;

    /* renamed from: n */
    public int f32359n;

    /* renamed from: o */
    @Nullable
    public ViewDragHelper f32360o;

    /* renamed from: p */
    public boolean f32361p;

    /* renamed from: q */
    public float f32362q;

    /* renamed from: r */
    public int f32363r;

    /* renamed from: s */
    public int f32364s;

    /* renamed from: t */
    public int f32365t;

    /* renamed from: u */
    public int f32366u;

    /* renamed from: v */
    @Nullable
    public WeakReference<V> f32367v;

    /* renamed from: w */
    @Nullable
    public WeakReference<View> f32368w;

    /* renamed from: x */
    @IdRes
    public int f32369x;

    /* renamed from: y */
    @Nullable
    public VelocityTracker f32370y;

    /* renamed from: z */
    @Nullable
    public MaterialSideContainerBackHelper f32371z;

    /* renamed from: Z */
    public static final int f32341Z = C5139R.string.side_sheet_accessibility_pane_title;

    /* renamed from: v0 */
    public static final int f32346v0 = C5139R.style.Widget_Material3_SideSheet;

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5378a();
        final int state;

        /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5378a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, @NonNull SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.state = sideSheetBehavior.f32358m;
        }
    }

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$a */
    /* loaded from: classes6.dex */
    public class C5379a extends ViewDragHelper.Callback {
        public C5379a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return MathUtils.clamp(i, SideSheetBehavior.this.f32350e.mo56458g(), SideSheetBehavior.this.f32350e.mo56457f());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return SideSheetBehavior.this.f32363r + SideSheetBehavior.this.m24854A();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1 && SideSheetBehavior.this.f32357l) {
                SideSheetBehavior.this.m24873W(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            View coplanarSiblingView = SideSheetBehavior.this.getCoplanarSiblingView();
            if (coplanarSiblingView != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) != null) {
                SideSheetBehavior.this.f32350e.mo56467p(marginLayoutParams, view.getLeft(), view.getRight());
                coplanarSiblingView.setLayoutParams(marginLayoutParams);
            }
            SideSheetBehavior.this.m24888s(view, i);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int m24884o = SideSheetBehavior.this.m24884o(view, f, f2);
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.m24877a0(view, m24884o, sideSheetBehavior.shouldSkipSmoothAnimation());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            return (SideSheetBehavior.this.f32358m == 1 || SideSheetBehavior.this.f32367v == null || SideSheetBehavior.this.f32367v.get() != view) ? false : true;
        }
    }

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$b */
    /* loaded from: classes6.dex */
    public class C5380b extends AnimatorListenerAdapter {
        public C5380b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SideSheetBehavior.this.m24873W(5);
            if (SideSheetBehavior.this.f32367v == null || SideSheetBehavior.this.f32367v.get() == null) {
                return;
            }
            ((View) SideSheetBehavior.this.f32367v.get()).requestLayout();
        }
    }

    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$c */
    /* loaded from: classes6.dex */
    public class C5381c {

        /* renamed from: a */
        public int f32374a;

        /* renamed from: b */
        public boolean f32375b;

        /* renamed from: c */
        public final Runnable f32376c = new Runnable() { // from class: com.sunia.HTREnginev2.spm
            @Override // java.lang.Runnable
            public final void run() {
                SideSheetBehavior.C5381c.this.m24900c();
            }
        };

        public C5381c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m24900c() {
            this.f32375b = false;
            if (SideSheetBehavior.this.f32360o != null && SideSheetBehavior.this.f32360o.continueSettling(true)) {
                m24901b(this.f32374a);
            } else if (SideSheetBehavior.this.f32358m == 2) {
                SideSheetBehavior.this.m24873W(this.f32374a);
            }
        }

        /* renamed from: b */
        public void m24901b(int i) {
            if (SideSheetBehavior.this.f32367v == null || SideSheetBehavior.this.f32367v.get() == null) {
                return;
            }
            this.f32374a = i;
            if (this.f32375b) {
                return;
            }
            ViewCompat.postOnAnimation((View) SideSheetBehavior.this.f32367v.get(), this.f32376c);
            this.f32375b = true;
        }
    }

    public SideSheetBehavior() {
        this.f32355j = new C5381c();
        this.f32357l = true;
        this.f32358m = 5;
        this.f32359n = 5;
        this.f32362q = 0.1f;
        this.f32369x = -1;
        this.f32348O = new LinkedHashSet();
        this.f32349Q = new C5379a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ boolean m24839N(int i, View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        setState(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m24840O(ViewGroup.MarginLayoutParams marginLayoutParams, int i, View view, ValueAnimator valueAnimator) {
        this.f32350e.mo56466o(marginLayoutParams, AnimationUtils.lerp(i, 0, valueAnimator.getAnimatedFraction()));
        view.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m24841P(int i) {
        V v = this.f32367v.get();
        if (v != null) {
            m24877a0(v, i, false);
        }
    }

    @NonNull
    public static <V extends View> SideSheetBehavior<V> from(@NonNull V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof SideSheetBehavior) {
            return (SideSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with SideSheetBehavior");
    }

    /* renamed from: A */
    public int m24854A() {
        return this.f32366u;
    }

    /* renamed from: B */
    public int m24855B(int i) {
        if (i == 3) {
            return getExpandedOffset();
        }
        if (i == 5) {
            return this.f32350e.mo56456e();
        }
        throw new IllegalArgumentException("Invalid state to get outer edge offset: " + i);
    }

    /* renamed from: C */
    public int m24856C() {
        return this.f32365t;
    }

    /* renamed from: D */
    public int m24857D() {
        return this.f32364s;
    }

    @Nullable
    /* renamed from: E */
    public ViewDragHelper m24858E() {
        return this.f32360o;
    }

    @Nullable
    /* renamed from: F */
    public final CoordinatorLayout.LayoutParams m24859F() {
        V v;
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference == null || (v = weakReference.get()) == null || !(v.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            return null;
        }
        return (CoordinatorLayout.LayoutParams) v.getLayoutParams();
    }

    /* renamed from: G */
    public float m24860G() {
        VelocityTracker velocityTracker = this.f32370y;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f32351f);
        return this.f32370y.getXVelocity();
    }

    /* renamed from: H */
    public final boolean m24861H() {
        CoordinatorLayout.LayoutParams m24859F = m24859F();
        return m24859F != null && ((ViewGroup.MarginLayoutParams) m24859F).leftMargin > 0;
    }

    /* renamed from: I */
    public final boolean m24862I() {
        CoordinatorLayout.LayoutParams m24859F = m24859F();
        return m24859F != null && ((ViewGroup.MarginLayoutParams) m24859F).rightMargin > 0;
    }

    /* renamed from: J */
    public final boolean m24863J(@NonNull MotionEvent motionEvent) {
        return m24874X() && m24883n((float) this.f32347J, motionEvent.getX()) > ((float) this.f32360o.getTouchSlop());
    }

    /* renamed from: K */
    public final boolean m24864K(float f) {
        return this.f32350e.mo56462k(f);
    }

    /* renamed from: L */
    public final boolean m24865L(@NonNull V v) {
        ViewParent parent = v.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v);
    }

    /* renamed from: M */
    public final boolean m24866M(View view, int i, boolean z) {
        int m24855B = m24855B(i);
        ViewDragHelper m24858E = m24858E();
        return m24858E != null && (!z ? !m24858E.smoothSlideViewTo(view, m24855B, view.getTop()) : !m24858E.settleCapturedViewAt(m24855B, view.getTop()));
    }

    /* renamed from: Q */
    public final void m24867Q(@NonNull CoordinatorLayout coordinatorLayout) {
        int i;
        View findViewById;
        if (this.f32368w != null || (i = this.f32369x) == -1 || (findViewById = coordinatorLayout.findViewById(i)) == null) {
            return;
        }
        this.f32368w = new WeakReference<>(findViewById);
    }

    /* renamed from: R */
    public final void m24868R(V v, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i) {
        ViewCompat.replaceAccessibilityAction(v, accessibilityActionCompat, null, m24886q(i));
    }

    /* renamed from: S */
    public final void m24869S() {
        VelocityTracker velocityTracker = this.f32370y;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f32370y = null;
        }
    }

    /* renamed from: T */
    public final void m24870T(@NonNull V v, Runnable runnable) {
        if (m24865L(v)) {
            v.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: U */
    public final void m24871U(int i) {
        unm unmVar = this.f32350e;
        if (unmVar == null || unmVar.mo56461j() != i) {
            if (i == 0) {
                this.f32350e = new vrl(this);
                if (this.f32354i == null || m24862I()) {
                    return;
                }
                ShapeAppearanceModel.Builder builder = this.f32354i.toBuilder();
                builder.setTopRightCornerSize(0.0f).setBottomRightCornerSize(0.0f);
                m24880d0(builder.build());
                return;
            }
            if (i == 1) {
                this.f32350e = new pxi(this);
                if (this.f32354i == null || m24861H()) {
                    return;
                }
                ShapeAppearanceModel.Builder builder2 = this.f32354i.toBuilder();
                builder2.setTopLeftCornerSize(0.0f).setBottomLeftCornerSize(0.0f);
                m24880d0(builder2.build());
                return;
            }
            throw new IllegalArgumentException("Invalid sheet edge position value: " + i + ". Must be 0 or 1.");
        }
    }

    /* renamed from: V */
    public final void m24872V(@NonNull V v, int i) {
        m24871U(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) v.getLayoutParams()).gravity, i) == 3 ? 1 : 0);
    }

    /* renamed from: W */
    public void m24873W(int i) {
        V v;
        if (this.f32358m == i) {
            return;
        }
        this.f32358m = i;
        if (i == 3 || i == 5) {
            this.f32359n = i;
        }
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        m24881e0(v);
        Iterator<SideSheetCallback> it2 = this.f32348O.iterator();
        while (it2.hasNext()) {
            it2.next().onStateChanged(v, i);
        }
        m24878b0();
    }

    /* renamed from: X */
    public final boolean m24874X() {
        return this.f32360o != null && (this.f32357l || this.f32358m == 1);
    }

    /* renamed from: Y */
    public boolean m24875Y(@NonNull View view, float f) {
        return this.f32350e.mo56465n(view, f);
    }

    /* renamed from: Z */
    public final boolean m24876Z(@NonNull V v) {
        return (v.isShown() || ViewCompat.getAccessibilityPaneTitle(v) != null) && this.f32357l;
    }

    /* renamed from: a0 */
    public final void m24877a0(View view, int i, boolean z) {
        if (!m24866M(view, i, z)) {
            m24873W(i);
        } else {
            m24873W(2);
            this.f32355j.m24901b(i);
        }
    }

    /* renamed from: b0 */
    public final void m24878b0() {
        V v;
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v, 262144);
        ViewCompat.removeAccessibilityAction(v, 1048576);
        if (this.f32358m != 5) {
            m24868R(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        if (this.f32358m != 3) {
            m24868R(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    /* renamed from: c0 */
    public final void m24879c0() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        V v = this.f32367v.get();
        View coplanarSiblingView = getCoplanarSiblingView();
        if (coplanarSiblingView == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) == null) {
            return;
        }
        this.f32350e.mo56466o(marginLayoutParams, (int) ((this.f32363r * v.getScaleX()) + this.f32366u));
        coplanarSiblingView.requestLayout();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.f32371z;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.cancelBackProgress();
    }

    /* renamed from: d0 */
    public final void m24880d0(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = this.f32352g;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* renamed from: e0 */
    public final void m24881e0(@NonNull View view) {
        int i = this.f32358m == 5 ? 4 : 0;
        if (view.getVisibility() != i) {
            view.setVisibility(i);
        }
    }

    public void expand() {
        setState(3);
    }

    @Nullable
    public View getCoplanarSiblingView() {
        WeakReference<View> weakReference = this.f32368w;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getExpandedOffset() {
        return this.f32350e.mo56455d();
    }

    public float getHideFriction() {
        return this.f32362q;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLastStableState() {
        return this.f32359n;
    }

    public int getSignificantVelocityThreshold() {
        return 500;
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public int getState() {
        return this.f32358m;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.f32371z;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        BackEventCompat onHandleBackInvoked = materialSideContainerBackHelper.onHandleBackInvoked();
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            setState(5);
        } else {
            this.f32371z.finishBackProgress(onHandleBackInvoked, m24894y(), new C5380b(), m24893x());
        }
    }

    public void hide() {
        setState(5);
    }

    public boolean isDraggable() {
        return this.f32357l;
    }

    /* renamed from: m */
    public final int m24882m(int i, V v) {
        int i2 = this.f32358m;
        if (i2 == 1 || i2 == 2) {
            return i - this.f32350e.mo56459h(v);
        }
        if (i2 == 3) {
            return 0;
        }
        if (i2 == 5) {
            return this.f32350e.mo56456e();
        }
        throw new IllegalStateException("Unexpected value: " + this.f32358m);
    }

    /* renamed from: n */
    public final float m24883n(float f, float f2) {
        return Math.abs(f - f2);
    }

    /* renamed from: o */
    public final int m24884o(@NonNull View view, float f, float f2) {
        if (m24864K(f)) {
            return 3;
        }
        if (m24875Y(view, f)) {
            if (!this.f32350e.mo56464m(f, f2) && !this.f32350e.mo56463l(view)) {
                return 3;
            }
        } else if (f == 0.0f || !oom.m56137a(f, f2)) {
            int left = view.getLeft();
            if (Math.abs(left - getExpandedOffset()) < Math.abs(left - this.f32350e.mo56456e())) {
                return 3;
            }
        }
        return 5;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f32367v = null;
        this.f32360o = null;
        this.f32371z = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f32367v = null;
        this.f32360o = null;
        this.f32371z = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!m24876Z(v)) {
            this.f32361p = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m24869S();
        }
        if (this.f32370y == null) {
            this.f32370y = VelocityTracker.obtain();
        }
        this.f32370y.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f32347J = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f32361p) {
            this.f32361p = false;
            return false;
        }
        return (this.f32361p || (viewDragHelper = this.f32360o) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f32367v == null) {
            this.f32367v = new WeakReference<>(v);
            this.f32371z = new MaterialSideContainerBackHelper(v);
            MaterialShapeDrawable materialShapeDrawable = this.f32352g;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.f32352g;
                float f = this.f32356k;
                if (f == -1.0f) {
                    f = ViewCompat.getElevation(v);
                }
                materialShapeDrawable2.setElevation(f);
            } else {
                ColorStateList colorStateList = this.f32353h;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v, colorStateList);
                }
            }
            m24881e0(v);
            m24878b0();
            if (ViewCompat.getImportantForAccessibility(v) == 0) {
                ViewCompat.setImportantForAccessibility(v, 1);
            }
            m24889t(v);
        }
        m24872V(v, i);
        if (this.f32360o == null) {
            this.f32360o = ViewDragHelper.create(coordinatorLayout, this.f32349Q);
        }
        int mo56459h = this.f32350e.mo56459h(v);
        coordinatorLayout.onLayoutChild(v, i);
        this.f32364s = coordinatorLayout.getWidth();
        this.f32365t = this.f32350e.mo56460i(coordinatorLayout);
        this.f32363r = v.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        this.f32366u = marginLayoutParams != null ? this.f32350e.mo56452a(marginLayoutParams) : 0;
        ViewCompat.offsetLeftAndRight(v, m24882m(mo56459h, v));
        m24867Q(coordinatorLayout);
        for (SideSheetCallback sideSheetCallback : this.f32348O) {
            if (sideSheetCallback instanceof SideSheetCallback) {
                sideSheetCallback.m24902a(v);
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(m24891v(i, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, -1, marginLayoutParams.width), m24891v(i3, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, -1, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        }
        int i = savedState.state;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.f32358m = i;
        this.f32359n = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), (SideSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f32358m == 1 && actionMasked == 0) {
            return true;
        }
        if (m24874X()) {
            this.f32360o.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            m24869S();
        }
        if (this.f32370y == null) {
            this.f32370y = VelocityTracker.obtain();
        }
        this.f32370y.addMovement(motionEvent);
        if (m24874X() && actionMasked == 2 && !this.f32361p && m24863J(motionEvent)) {
            this.f32360o.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f32361p;
    }

    /* renamed from: p */
    public final void m24885p() {
        WeakReference<View> weakReference = this.f32368w;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f32368w = null;
    }

    /* renamed from: q */
    public final AccessibilityViewCommand m24886q(final int i) {
        return new AccessibilityViewCommand() { // from class: com.sunia.HTREnginev2.rpm
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                boolean m24839N;
                m24839N = SideSheetBehavior.this.m24839N(i, view, commandArguments);
                return m24839N;
            }
        };
    }

    /* renamed from: r */
    public final void m24887r(@NonNull Context context) {
        if (this.f32354i == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f32354i);
        this.f32352g = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(context);
        ColorStateList colorStateList = this.f32353h;
        if (colorStateList != null) {
            this.f32352g.setFillColor(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f32352g.setTint(typedValue.data);
    }

    /* renamed from: s */
    public final void m24888s(@NonNull View view, int i) {
        if (this.f32348O.isEmpty()) {
            return;
        }
        float mo56453b = this.f32350e.mo56453b(i);
        Iterator<SideSheetCallback> it2 = this.f32348O.iterator();
        while (it2.hasNext()) {
            it2.next().onSlide(view, mo56453b);
        }
    }

    public void setCoplanarSiblingView(@Nullable View view) {
        this.f32369x = -1;
        if (view == null) {
            m24885p();
            return;
        }
        this.f32368w = new WeakReference<>(view);
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference != null) {
            V v = weakReference.get();
            if (ViewCompat.isLaidOut(v)) {
                v.requestLayout();
            }
        }
    }

    public void setCoplanarSiblingViewId(@IdRes int i) {
        this.f32369x = i;
        m24885p();
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference != null) {
            V v = weakReference.get();
            if (i == -1 || !ViewCompat.isLaidOut(v)) {
                return;
            }
            v.requestLayout();
        }
    }

    public void setDraggable(boolean z) {
        this.f32357l = z;
    }

    public void setHideFriction(float f) {
        this.f32362q = f;
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public void setState(final int i) {
        if (i == 1 || i == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        WeakReference<V> weakReference = this.f32367v;
        if (weakReference == null || weakReference.get() == null) {
            m24873W(i);
        } else {
            m24870T(this.f32367v.get(), new Runnable() { // from class: com.sunia.HTREnginev2.qpm
                @Override // java.lang.Runnable
                public final void run() {
                    SideSheetBehavior.this.m24841P(i);
                }
            });
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.f32371z;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.startBackProgress(backEventCompat);
    }

    /* renamed from: t */
    public final void m24889t(View view) {
        if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
            ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(f32341Z));
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: u */
    public MaterialSideContainerBackHelper m24890u() {
        return this.f32371z;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.f32371z;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.updateBackProgress(backEventCompat, m24894y());
        m24879c0();
    }

    /* renamed from: v */
    public final int m24891v(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    /* renamed from: w */
    public int m24892w() {
        return this.f32363r;
    }

    @Nullable
    /* renamed from: x */
    public final ValueAnimator.AnimatorUpdateListener m24893x() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        final View coplanarSiblingView = getCoplanarSiblingView();
        if (coplanarSiblingView == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) == null) {
            return null;
        }
        final int mo56454c = this.f32350e.mo56454c(marginLayoutParams);
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.ppm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SideSheetBehavior.this.m24840O(marginLayoutParams, mo56454c, coplanarSiblingView, valueAnimator);
            }
        };
    }

    @GravityInt
    /* renamed from: y */
    public final int m24894y() {
        unm unmVar = this.f32350e;
        return (unmVar == null || unmVar.mo56461j() == 0) ? 5 : 3;
    }

    /* renamed from: z */
    public float m24895z() {
        return 0.5f;
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public void addCallback(@NonNull SideSheetCallback sideSheetCallback) {
        this.f32348O.add(sideSheetCallback);
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public void removeCallback(@NonNull SideSheetCallback sideSheetCallback) {
        this.f32348O.remove(sideSheetCallback);
    }

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32355j = new C5381c();
        this.f32357l = true;
        this.f32358m = 5;
        this.f32359n = 5;
        this.f32362q = 0.1f;
        this.f32369x = -1;
        this.f32348O = new LinkedHashSet();
        this.f32349Q = new C5379a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.SideSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.f32353h = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(C5139R.styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f32354i = ShapeAppearanceModel.builder(context, attributeSet, 0, f32346v0).build();
        }
        if (obtainStyledAttributes.hasValue(C5139R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            setCoplanarSiblingViewId(obtainStyledAttributes.getResourceId(C5139R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1));
        }
        m24887r(context);
        this.f32356k = obtainStyledAttributes.getDimension(C5139R.styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        setDraggable(obtainStyledAttributes.getBoolean(C5139R.styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        obtainStyledAttributes.recycle();
        this.f32351f = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
