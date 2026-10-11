package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANCHOR_MODE_CRADLE = 1;
    public static final int FAB_ANCHOR_MODE_EMBED = 0;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    public static final int MENU_ALIGNMENT_MODE_AUTO = 0;
    public static final int MENU_ALIGNMENT_MODE_START = 1;

    /* renamed from: o1 */
    public static final int f30372o1 = 300;

    /* renamed from: r1 */
    public static final float f30375r1 = 0.2f;

    /* renamed from: s1 */
    public static final int f30376s1 = -1;

    /* renamed from: t1 */
    public static final int f30377t1 = 0;

    /* renamed from: N0 */
    @Nullable
    public Integer f30378N0;

    /* renamed from: O0 */
    public final MaterialShapeDrawable f30379O0;

    /* renamed from: P0 */
    @Nullable
    public Animator f30380P0;

    /* renamed from: Q0 */
    @Nullable
    public Animator f30381Q0;

    /* renamed from: R0 */
    public int f30382R0;

    /* renamed from: S0 */
    public int f30383S0;

    /* renamed from: T0 */
    public int f30384T0;

    /* renamed from: U0 */
    public final int f30385U0;

    /* renamed from: V0 */
    @Px
    public int f30386V0;

    /* renamed from: W0 */
    public int f30387W0;

    /* renamed from: X0 */
    public final boolean f30388X0;

    /* renamed from: Y0 */
    public boolean f30389Y0;

    /* renamed from: Z0 */
    public final boolean f30390Z0;

    /* renamed from: a1 */
    public final boolean f30391a1;

    /* renamed from: b1 */
    public final boolean f30392b1;

    /* renamed from: c1 */
    public int f30393c1;

    /* renamed from: d1 */
    public ArrayList<InterfaceC5168j> f30394d1;

    /* renamed from: e1 */
    @MenuRes
    public int f30395e1;

    /* renamed from: f1 */
    public boolean f30396f1;

    /* renamed from: g1 */
    public boolean f30397g1;

    /* renamed from: h1 */
    public Behavior f30398h1;

    /* renamed from: i1 */
    public int f30399i1;

    /* renamed from: j1 */
    public int f30400j1;

    /* renamed from: k1 */
    public int f30401k1;

    /* renamed from: l1 */
    @NonNull
    public AnimatorListenerAdapter f30402l1;

    /* renamed from: m1 */
    @NonNull
    public TransformationCallback<FloatingActionButton> f30403m1;

    /* renamed from: n1 */
    public static final int f30371n1 = C5139R.style.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: p1 */
    public static final int f30373p1 = C5139R.attr.motionDurationLong2;

    /* renamed from: q1 */
    public static final int f30374q1 = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* loaded from: classes6.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: s */
        @NonNull
        public final Rect f30404s;

        /* renamed from: t */
        public WeakReference<BottomAppBar> f30405t;

        /* renamed from: u */
        public int f30406u;

        /* renamed from: v */
        public final View.OnLayoutChangeListener f30407v;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$a */
        /* loaded from: classes6.dex */
        public class ViewOnLayoutChangeListenerC5157a implements View.OnLayoutChangeListener {
            public ViewOnLayoutChangeListenerC5157a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f30405t.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.getMeasuredContentRect(Behavior.this.f30404s);
                    int height2 = Behavior.this.f30404s.height();
                    bottomAppBar.m23110D0(height2);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().getTopLeftCornerSize().getCornerSize(new RectF(Behavior.this.f30404s)));
                    height = height2;
                }
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.f30406u == 0) {
                    if (bottomAppBar.f30384T0 == 1) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C5139R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                    if (ViewUtils.isLayoutRtl(view)) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.f30385U0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.f30385U0;
                    }
                }
                bottomAppBar.m23109C0();
            }
        }

        public Behavior() {
            this.f30407v = new ViewOnLayoutChangeListenerC5157a();
            this.f30404s = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i) {
            this.f30405t = new WeakReference<>(bottomAppBar);
            View m23121t0 = bottomAppBar.m23121t0();
            if (m23121t0 != null && !ViewCompat.isLaidOut(m23121t0)) {
                BottomAppBar.m23075G0(bottomAppBar, m23121t0);
                this.f30406u = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) m23121t0.getLayoutParams())).bottomMargin;
                if (m23121t0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) m23121t0;
                    if (bottomAppBar.f30384T0 == 0 && bottomAppBar.f30388X0) {
                        ViewCompat.setElevation(floatingActionButton, 0.0f);
                        floatingActionButton.setCompatElevation(0.0f);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(C5139R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(C5139R.animator.mtrl_fab_hide_motion_spec);
                    }
                    bottomAppBar.m23114m0(floatingActionButton);
                }
                m23121t0.addOnLayoutChangeListener(this.f30407v);
                bottomAppBar.m23109C0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i, i2);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f30407v = new ViewOnLayoutChangeListenerC5157a();
            this.f30404s = new Rect();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface FabAnchorMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface FabAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface MenuAlignmentMode {
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5158a();
        int fabAlignmentMode;
        boolean fabAttached;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5158a implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes6.dex */
    public class C5159a extends AnimatorListenerAdapter {
        public C5159a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f30396f1) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.m23124x0(bottomAppBar.f30382R0, BottomAppBar.this.f30397g1);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$b */
    /* loaded from: classes6.dex */
    public class C5160b implements TransformationCallback<FloatingActionButton> {
        public C5160b() {
        }

        @Override // com.google.android.material.animation.TransformationCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onScaleChanged(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f30379O0.setInterpolation((floatingActionButton.getVisibility() == 0 && BottomAppBar.this.f30384T0 == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // com.google.android.material.animation.TransformationCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onTranslationChanged(@NonNull FloatingActionButton floatingActionButton) {
            if (BottomAppBar.this.f30384T0 != 1) {
                return;
            }
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().getHorizontalOffset() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().m23143h(translationX);
                BottomAppBar.this.f30379O0.invalidateSelf();
            }
            float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().m23137b() != max) {
                BottomAppBar.this.getTopEdgeTreatment().m23140e(max);
                BottomAppBar.this.f30379O0.invalidateSelf();
            }
            BottomAppBar.this.f30379O0.setInterpolation(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$c */
    /* loaded from: classes6.dex */
    public class C5161c implements ViewUtils.OnApplyWindowInsetsListener {
        public C5161c() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
            boolean z;
            if (BottomAppBar.this.f30390Z0) {
                BottomAppBar.this.f30399i1 = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z2 = false;
            if (BottomAppBar.this.f30391a1) {
                z = BottomAppBar.this.f30401k1 != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f30401k1 = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z = false;
            }
            if (BottomAppBar.this.f30392b1) {
                boolean z3 = BottomAppBar.this.f30400j1 != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f30400j1 = windowInsetsCompat.getSystemWindowInsetRight();
                z2 = z3;
            }
            if (z || z2) {
                BottomAppBar.this.m23115n0();
                BottomAppBar.this.m23109C0();
                BottomAppBar.this.m23108B0();
            }
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$d */
    /* loaded from: classes6.dex */
    public class C5162d extends AnimatorListenerAdapter {
        public C5162d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m23118q0();
            BottomAppBar.this.f30380P0 = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m23119r0();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$e */
    /* loaded from: classes6.dex */
    public class C5163e extends FloatingActionButton.OnVisibilityChangedListener {

        /* renamed from: a */
        public final /* synthetic */ int f30413a;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$e$a */
        /* loaded from: classes6.dex */
        public class a extends FloatingActionButton.OnVisibilityChangedListener {
            public a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
            public void onShown(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.m23118q0();
            }
        }

        public C5163e(int i) {
            this.f30413a = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
        public void onHidden(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.m23122u0(this.f30413a));
            floatingActionButton.show(new a());
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$f */
    /* loaded from: classes6.dex */
    public class C5164f extends AnimatorListenerAdapter {
        public C5164f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m23118q0();
            BottomAppBar.this.f30396f1 = false;
            BottomAppBar.this.f30381Q0 = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m23119r0();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$g */
    /* loaded from: classes6.dex */
    public class C5165g extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f30417e;

        /* renamed from: f */
        public final /* synthetic */ ActionMenuView f30418f;

        /* renamed from: g */
        public final /* synthetic */ int f30419g;

        /* renamed from: h */
        public final /* synthetic */ boolean f30420h;

        public C5165g(ActionMenuView actionMenuView, int i, boolean z) {
            this.f30418f = actionMenuView;
            this.f30419g = i;
            this.f30420h = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f30417e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f30417e) {
                return;
            }
            boolean z = BottomAppBar.this.f30395e1 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.replaceMenu(bottomAppBar.f30395e1);
            BottomAppBar.this.m23112F0(this.f30418f, this.f30419g, this.f30420h, z);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$h */
    /* loaded from: classes6.dex */
    public class RunnableC5166h implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ActionMenuView f30422e;

        /* renamed from: f */
        public final /* synthetic */ int f30423f;

        /* renamed from: g */
        public final /* synthetic */ boolean f30424g;

        public RunnableC5166h(ActionMenuView actionMenuView, int i, boolean z) {
            this.f30422e = actionMenuView;
            this.f30423f = i;
            this.f30424g = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f30422e.setTranslationX(BottomAppBar.this.getActionMenuViewTranslationX(r0, this.f30423f, this.f30424g));
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$i */
    /* loaded from: classes6.dex */
    public class C5167i extends AnimatorListenerAdapter {
        public C5167i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f30402l1.onAnimationStart(animator);
            FloatingActionButton m23120s0 = BottomAppBar.this.m23120s0();
            if (m23120s0 != null) {
                m23120s0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$j */
    /* loaded from: classes6.dex */
    public interface InterfaceC5168j {
        /* renamed from: a */
        void m23135a(BottomAppBar bottomAppBar);

        /* renamed from: b */
        void m23136b(BottomAppBar bottomAppBar);
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: G0 */
    public static void m23075G0(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        layoutParams.anchorGravity = 17;
        int i = bottomAppBar.f30384T0;
        if (i == 1) {
            layoutParams.anchorGravity = 17 | 48;
        }
        if (i == 0) {
            layoutParams.anchorGravity |= 80;
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f30399i1;
    }

    private int getFabAlignmentAnimationDuration() {
        return MotionUtils.resolveThemeDuration(getContext(), f30373p1, 300);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return m23122u0(this.f30382R0);
    }

    private float getFabTranslationY() {
        if (this.f30384T0 == 1) {
            return -getTopEdgeTreatment().m23137b();
        }
        return m23121t0() != null ? (-((getMeasuredHeight() + getBottomInset()) - r0.getMeasuredHeight())) / 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f30401k1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f30400j1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        return (BottomAppBarTopEdgeTreatment) this.f30379O0.getShapeAppearanceModel().getTopEdge();
    }

    /* renamed from: A0 */
    public void m23107A0(@NonNull InterfaceC5168j interfaceC5168j) {
        ArrayList<InterfaceC5168j> arrayList = this.f30394d1;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(interfaceC5168j);
    }

    /* renamed from: B0 */
    public final void m23108B0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f30381Q0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (m23123v0()) {
            m23111E0(actionMenuView, this.f30382R0, this.f30397g1);
        } else {
            m23111E0(actionMenuView, 0, false);
        }
    }

    /* renamed from: C0 */
    public final void m23109C0() {
        getTopEdgeTreatment().m23143h(getFabTranslationX());
        this.f30379O0.setInterpolation((this.f30397g1 && m23123v0() && this.f30384T0 == 1) ? 1.0f : 0.0f);
        View m23121t0 = m23121t0();
        if (m23121t0 != null) {
            m23121t0.setTranslationY(getFabTranslationY());
            m23121t0.setTranslationX(getFabTranslationX());
        }
    }

    /* renamed from: D0 */
    public boolean m23110D0(@Px int i) {
        float f = i;
        if (f == getTopEdgeTreatment().getFabDiameter()) {
            return false;
        }
        getTopEdgeTreatment().setFabDiameter(f);
        this.f30379O0.invalidateSelf();
        return true;
    }

    /* renamed from: E0 */
    public final void m23111E0(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        m23112F0(actionMenuView, i, z, false);
    }

    /* renamed from: F0 */
    public final void m23112F0(@NonNull ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        RunnableC5166h runnableC5166h = new RunnableC5166h(actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(runnableC5166h);
        } else {
            runnableC5166h.run();
        }
    }

    public void addOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.OnScrollStateChangedListener onScrollStateChangedListener) {
        getBehavior().addOnScrollStateChangedListener(onScrollStateChangedListener);
    }

    public void clearOnScrollStateChangedListeners() {
        getBehavior().clearOnScrollStateChangedListeners();
    }

    public void createFabDefaultXAnimation(int i, List<Animator> list) {
        FloatingActionButton m23120s0 = m23120s0();
        if (m23120s0 == null || m23120s0.isOrWillBeHidden()) {
            return;
        }
        m23119r0();
        m23120s0.hide(new C5163e(i));
    }

    public int getActionMenuViewTranslationX(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        int i2 = 0;
        if (this.f30387W0 != 1 && (i != 1 || !z)) {
            return 0;
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int measuredWidth = isLayoutRtl ? getMeasuredWidth() : 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = isLayoutRtl ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = isLayoutRtl ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i4 = isLayoutRtl ? this.f30400j1 : -this.f30401k1;
        if (getNavigationIcon() == null) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(C5139R.dimen.m3_bottomappbar_horizontal_padding);
            if (!isLayoutRtl) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
            i2 = dimensionPixelOffset;
        }
        return measuredWidth - ((right + i4) + i2);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f30379O0.getTintList();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m23137b();
    }

    public int getFabAlignmentMode() {
        return this.f30382R0;
    }

    @Px
    public int getFabAlignmentModeEndMargin() {
        return this.f30386V0;
    }

    public int getFabAnchorMode() {
        return this.f30384T0;
    }

    public int getFabAnimationMode() {
        return this.f30383S0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m23138c();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m23139d();
    }

    public boolean getHideOnScroll() {
        return this.f30389Y0;
    }

    public int getMenuAlignmentMode() {
        return this.f30387W0;
    }

    public boolean isScrolledDown() {
        return getBehavior().isScrolledDown();
    }

    public boolean isScrolledUp() {
        return getBehavior().isScrolledUp();
    }

    /* renamed from: l0 */
    public void m23113l0(@NonNull InterfaceC5168j interfaceC5168j) {
        if (this.f30394d1 == null) {
            this.f30394d1 = new ArrayList<>();
        }
        this.f30394d1.add(interfaceC5168j);
    }

    /* renamed from: m0 */
    public final void m23114m0(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.addOnHideAnimationListener(this.f30402l1);
        floatingActionButton.addOnShowAnimationListener(new C5167i());
        floatingActionButton.addTransformationCallback(this.f30403m1);
    }

    /* renamed from: n0 */
    public final void m23115n0() {
        Animator animator = this.f30381Q0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f30380P0;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* renamed from: o0 */
    public final void m23116o0(int i, @NonNull List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m23120s0(), "translationX", m23122u0(i));
        ofFloat.setDuration(getFabAlignmentAnimationDuration());
        list.add(ofFloat);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.f30379O0);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m23115n0();
            m23109C0();
            final View m23121t0 = m23121t0();
            if (m23121t0 != null && ViewCompat.isLaidOut(m23121t0)) {
                m23121t0.post(new Runnable() { // from class: com.sunia.HTREnginev2.eu
                    @Override // java.lang.Runnable
                    public final void run() {
                        m23121t0.requestLayout();
                    }
                });
            }
        }
        m23108B0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f30382R0 = savedState.fabAlignmentMode;
        this.f30397g1 = savedState.fabAttached;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.f30382R0;
        savedState.fabAttached = this.f30397g1;
        return savedState;
    }

    /* renamed from: p0 */
    public final void m23117p0(int i, boolean z, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        ofFloat.setDuration(0.8f * fabAlignmentAnimationDuration);
        if (Math.abs(actionMenuView.getTranslationX() - getActionMenuViewTranslationX(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.setDuration(fabAlignmentAnimationDuration * 0.2f);
            ofFloat2.addListener(new C5165g(actionMenuView, i, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        }
    }

    public void performHide() {
        performHide(true);
    }

    public void performShow() {
        performShow(true);
    }

    /* renamed from: q0 */
    public final void m23118q0() {
        ArrayList<InterfaceC5168j> arrayList;
        int i = this.f30393c1 - 1;
        this.f30393c1 = i;
        if (i != 0 || (arrayList = this.f30394d1) == null) {
            return;
        }
        Iterator<InterfaceC5168j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().m23135a(this);
        }
    }

    /* renamed from: r0 */
    public final void m23119r0() {
        ArrayList<InterfaceC5168j> arrayList;
        int i = this.f30393c1;
        this.f30393c1 = i + 1;
        if (i != 0 || (arrayList = this.f30394d1) == null) {
            return;
        }
        Iterator<InterfaceC5168j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().m23136b(this);
        }
    }

    public void removeOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.OnScrollStateChangedListener onScrollStateChangedListener) {
        getBehavior().removeOnScrollStateChangedListener(onScrollStateChangedListener);
    }

    public void replaceMenu(@MenuRes int i) {
        if (i != 0) {
            this.f30395e1 = 0;
            getMenu().clear();
            inflateMenu(i);
        }
    }

    @Nullable
    /* renamed from: s0 */
    public final FloatingActionButton m23120s0() {
        View m23121t0 = m23121t0();
        if (m23121t0 instanceof FloatingActionButton) {
            return (FloatingActionButton) m23121t0;
        }
        return null;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f30379O0, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m23140e(f);
            this.f30379O0.invalidateSelf();
            m23109C0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f30379O0.setElevation(f);
        getBehavior().setAdditionalHiddenOffsetY(this, this.f30379O0.getShadowRadius() - this.f30379O0.getShadowOffsetY());
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i, @MenuRes int i2) {
        this.f30395e1 = i2;
        this.f30396f1 = true;
        m23124x0(i, this.f30397g1);
        m23125y0(i);
        this.f30382R0 = i;
    }

    public void setFabAlignmentModeEndMargin(@Px int i) {
        if (this.f30386V0 != i) {
            this.f30386V0 = i;
            m23109C0();
        }
    }

    public void setFabAnchorMode(int i) {
        this.f30384T0 = i;
        m23109C0();
        View m23121t0 = m23121t0();
        if (m23121t0 != null) {
            m23075G0(this, m23121t0);
            m23121t0.requestLayout();
            this.f30379O0.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i) {
        this.f30383S0 = i;
    }

    public void setFabCornerSize(@Dimension float f) {
        if (f != getTopEdgeTreatment().getFabCornerRadius()) {
            getTopEdgeTreatment().setFabCornerSize(f);
            this.f30379O0.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m23141f(f);
            this.f30379O0.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m23142g(f);
            this.f30379O0.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f30389Y0 = z;
    }

    public void setMenuAlignmentMode(int i) {
        if (this.f30387W0 != i) {
            this.f30387W0 = i;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                m23111E0(actionMenuView, this.f30382R0, m23123v0());
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(m23126z0(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i) {
        this.f30378N0 = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    @Nullable
    /* renamed from: t0 */
    public final View m23121t0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: u0 */
    public final float m23122u0(int i) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        if (i != 1) {
            return 0.0f;
        }
        return ((getMeasuredWidth() / 2) - ((isLayoutRtl ? this.f30401k1 : this.f30400j1) + ((this.f30386V0 == -1 || m23121t0() == null) ? this.f30385U0 : (r6.getMeasuredWidth() / 2) + this.f30386V0))) * (isLayoutRtl ? -1 : 1);
    }

    /* renamed from: v0 */
    public final boolean m23123v0() {
        FloatingActionButton m23120s0 = m23120s0();
        return m23120s0 != null && m23120s0.isOrWillBeShown();
    }

    /* renamed from: x0 */
    public final void m23124x0(int i, boolean z) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f30396f1 = false;
            replaceMenu(this.f30395e1);
            return;
        }
        Animator animator = this.f30381Q0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!m23123v0()) {
            i = 0;
            z = false;
        }
        m23117p0(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f30381Q0 = animatorSet;
        animatorSet.addListener(new C5164f());
        this.f30381Q0.start();
    }

    /* renamed from: y0 */
    public final void m23125y0(int i) {
        if (this.f30382R0 == i || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.f30380P0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f30383S0 == 1) {
            m23116o0(i, arrayList);
        } else {
            createFabDefaultXAnimation(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), f30374q1, AnimationUtils.LINEAR_INTERPOLATOR));
        this.f30380P0 = animatorSet;
        animatorSet.addListener(new C5162d());
        this.f30380P0.start();
    }

    @Nullable
    /* renamed from: z0 */
    public final Drawable m23126z0(@Nullable Drawable drawable) {
        if (drawable == null || this.f30378N0 == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.f30378N0.intValue());
        return wrap;
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.f30398h1 == null) {
            this.f30398h1 = new Behavior();
        }
        return this.f30398h1;
    }

    public void performHide(boolean z) {
        getBehavior().slideDown(this, z);
    }

    public void performShow(boolean z) {
        getBehavior().slideUp(this, z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomAppBar(@androidx.annotation.NonNull android.content.Context r13, @androidx.annotation.Nullable android.util.AttributeSet r14, int r15) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
