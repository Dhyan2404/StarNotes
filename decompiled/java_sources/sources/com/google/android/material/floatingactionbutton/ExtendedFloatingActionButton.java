package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.sunia.HTREnginev2.C13666eb;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: E0 */
    public static final int f31261E0 = 0;

    /* renamed from: F0 */
    public static final int f31262F0 = 1;

    /* renamed from: G0 */
    public static final int f31263G0 = 2;

    /* renamed from: H0 */
    public static final int f31264H0 = 0;

    /* renamed from: I0 */
    public static final int f31265I0 = 1;

    /* renamed from: J0 */
    public static final int f31266J0 = 2;

    /* renamed from: K0 */
    public static final int f31267K0 = 3;

    /* renamed from: L0 */
    public static final int f31268L0 = 0;

    /* renamed from: M0 */
    public static final int f31269M0 = 1;

    /* renamed from: N0 */
    public static final int f31270N0 = 2;

    /* renamed from: A0 */
    public int f31275A0;

    /* renamed from: B0 */
    public int f31276B0;

    /* renamed from: C0 */
    public final int f31277C0;

    /* renamed from: J */
    public final C13666eb f31278J;

    /* renamed from: O */
    @NonNull
    public final InterfaceC5285c f31279O;

    /* renamed from: Q */
    @NonNull
    public final InterfaceC5285c f31280Q;

    /* renamed from: k0 */
    public final InterfaceC5285c f31281k0;

    @NonNull
    protected ColorStateList originalTextCsl;

    /* renamed from: q0 */
    public final InterfaceC5285c f31282q0;

    /* renamed from: t0 */
    public final int f31283t0;

    /* renamed from: u0 */
    public int f31284u0;

    /* renamed from: v0 */
    public int f31285v0;

    /* renamed from: w0 */
    @NonNull
    public final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f31286w0;

    /* renamed from: x0 */
    public boolean f31287x0;

    /* renamed from: y0 */
    public boolean f31288y0;

    /* renamed from: z */
    public int f31289z;

    /* renamed from: z0 */
    public boolean f31290z0;

    /* renamed from: D0 */
    public static final int f31260D0 = C5139R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: O0 */
    public static final Property<View, Float> f31271O0 = new C5272f(Float.class, "width");

    /* renamed from: P0 */
    public static final Property<View, Float> f31272P0 = new C5273g(Float.class, "height");

    /* renamed from: Q0 */
    public static final Property<View, Float> f31273Q0 = new C5274h(Float.class, "paddingStart");

    /* renamed from: R0 */
    public static final Property<View, Float> f31274R0 = new C5275i(Float.class, "paddingEnd");

    /* loaded from: classes6.dex */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: j */
        public static final boolean f31291j = false;

        /* renamed from: k */
        public static final boolean f31292k = true;

        /* renamed from: e */
        public Rect f31293e;

        /* renamed from: f */
        @Nullable
        public OnChangedCallback f31294f;

        /* renamed from: g */
        @Nullable
        public OnChangedCallback f31295g;

        /* renamed from: h */
        public boolean f31296h;

        /* renamed from: i */
        public boolean f31297i;

        public ExtendedFloatingActionButtonBehavior() {
            this.f31296h = false;
            this.f31297i = true;
        }

        /* renamed from: a */
        public static boolean m24061a(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @VisibleForTesting
        /* renamed from: b */
        public void m24062b(@Nullable OnChangedCallback onChangedCallback) {
            this.f31294f = onChangedCallback;
        }

        @VisibleForTesting
        /* renamed from: c */
        public void m24063c(@Nullable OnChangedCallback onChangedCallback) {
            this.f31295g = onChangedCallback;
        }

        /* renamed from: d */
        public final boolean m24064d(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f31296h || this.f31297i) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        /* renamed from: e */
        public final boolean m24065e(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m24064d(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f31293e == null) {
                this.f31293e = new Rect();
            }
            Rect rect = this.f31293e;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        public void extendOrShow(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f31297i;
            extendedFloatingActionButton.m24059y(z ? 3 : 0, z ? this.f31295g : this.f31294f);
        }

        /* renamed from: f */
        public final boolean m24066f(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m24064d(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        public boolean isAutoHideEnabled() {
            return this.f31296h;
        }

        public boolean isAutoShrinkEnabled() {
            return this.f31297i;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public void setAutoHideEnabled(boolean z) {
            this.f31296h = z;
        }

        public void setAutoShrinkEnabled(boolean z) {
            this.f31297i = z;
        }

        public void shrinkOrHide(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f31297i;
            extendedFloatingActionButton.m24059y(z ? 2 : 1, z ? this.f31295g : this.f31294f);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, (CoordinatorLayout) extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m24065e(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!m24061a(view)) {
                return false;
            }
            m24066f(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (view instanceof AppBarLayout) {
                    if (m24065e(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (m24061a(view) && m24066f(view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i);
            return true;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f31296h = obtainStyledAttributes.getBoolean(C5139R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f31297i = obtainStyledAttributes.getBoolean(C5139R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class OnChangedCallback {
        public void onExtended(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onHidden(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShown(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShrunken(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    /* loaded from: classes6.dex */
    public class C5267a implements InterfaceC5279m {
        public C5267a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        /* renamed from: a */
        public ViewGroup.LayoutParams mo24067a() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b */
    /* loaded from: classes6.dex */
    public class C5268b implements InterfaceC5279m {
        public C5268b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        /* renamed from: a */
        public ViewGroup.LayoutParams mo24067a() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f31285v0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f31284u0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f31284u0 + ExtendedFloatingActionButton.this.f31285v0;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$c */
    /* loaded from: classes6.dex */
    public class C5269c implements InterfaceC5279m {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC5279m f31300a;

        public C5269c(InterfaceC5279m interfaceC5279m) {
            this.f31300a = interfaceC5279m;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        /* renamed from: a */
        public ViewGroup.LayoutParams mo24067a() {
            return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.f31276B0 == 0 ? -2 : ExtendedFloatingActionButton.this.f31276B0);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (ExtendedFloatingActionButton.this.f31276B0 != -1) {
                return (ExtendedFloatingActionButton.this.f31276B0 == 0 || ExtendedFloatingActionButton.this.f31276B0 == -2) ? this.f31300a.getHeight() : ExtendedFloatingActionButton.this.f31276B0;
            }
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f31300a.getHeight();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.height == -2) {
                return this.f31300a.getHeight();
            }
            int i = 0;
            int paddingTop = view.getPaddingTop() + view.getPaddingBottom() + 0;
            if ((ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) != null) {
                i = 0 + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
            return (view.getHeight() - i) - paddingTop;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f31285v0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f31284u0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f31300a.getWidth();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.width == -2) {
                return this.f31300a.getWidth();
            }
            int i = 0;
            int paddingLeft = view.getPaddingLeft() + view.getPaddingRight() + 0;
            if ((ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) != null) {
                i = 0 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            }
            return (view.getWidth() - i) - paddingLeft;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$d */
    /* loaded from: classes6.dex */
    public class C5270d implements InterfaceC5279m {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC5279m f31302a;

        /* renamed from: b */
        public final /* synthetic */ InterfaceC5279m f31303b;

        public C5270d(InterfaceC5279m interfaceC5279m, InterfaceC5279m interfaceC5279m2) {
            this.f31302a = interfaceC5279m;
            this.f31303b = interfaceC5279m2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        /* renamed from: a */
        public ViewGroup.LayoutParams mo24067a() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.f31275A0 == 0 ? -2 : ExtendedFloatingActionButton.this.f31275A0, ExtendedFloatingActionButton.this.f31276B0 != 0 ? ExtendedFloatingActionButton.this.f31276B0 : -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getHeight() {
            return ExtendedFloatingActionButton.this.f31276B0 == -1 ? this.f31302a.getHeight() : (ExtendedFloatingActionButton.this.f31276B0 == 0 || ExtendedFloatingActionButton.this.f31276B0 == -2) ? this.f31303b.getHeight() : ExtendedFloatingActionButton.this.f31276B0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f31285v0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f31284u0;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.InterfaceC5279m
        public int getWidth() {
            return ExtendedFloatingActionButton.this.f31275A0 == -1 ? this.f31302a.getWidth() : (ExtendedFloatingActionButton.this.f31275A0 == 0 || ExtendedFloatingActionButton.this.f31275A0 == -2) ? this.f31303b.getWidth() : ExtendedFloatingActionButton.this.f31275A0;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$e */
    /* loaded from: classes6.dex */
    public class C5271e extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f31305e;

        /* renamed from: f */
        public final /* synthetic */ InterfaceC5285c f31306f;

        /* renamed from: g */
        public final /* synthetic */ OnChangedCallback f31307g;

        public C5271e(InterfaceC5285c interfaceC5285c, OnChangedCallback onChangedCallback) {
            this.f31306f = interfaceC5285c;
            this.f31307g = onChangedCallback;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f31305e = true;
            this.f31306f.mo24081g();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f31306f.onAnimationEnd();
            if (this.f31305e) {
                return;
            }
            this.f31306f.mo24078f(this.f31307g);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f31306f.onAnimationStart(animator);
            this.f31305e = false;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$f */
    /* loaded from: classes6.dex */
    public class C5272f extends Property<View, Float> {
        public C5272f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$g */
    /* loaded from: classes6.dex */
    public class C5273g extends Property<View, Float> {
        public C5273g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h */
    /* loaded from: classes6.dex */
    public class C5274h extends Property<View, Float> {
        public C5274h(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, f.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$i */
    /* loaded from: classes6.dex */
    public class C5275i extends Property<View, Float> {
        public C5275i(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j */
    /* loaded from: classes6.dex */
    public class C5276j extends AbstractC5283a {

        /* renamed from: g */
        public final InterfaceC5279m f31309g;

        /* renamed from: h */
        public final boolean f31310h;

        public C5276j(C13666eb c13666eb, InterfaceC5279m interfaceC5279m, boolean z) {
            super(ExtendedFloatingActionButton.this, c13666eb);
            this.f31309g = interfaceC5279m;
            this.f31310h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: c */
        public boolean mo24076c() {
            return this.f31310h == ExtendedFloatingActionButton.this.f31287x0 || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: e */
        public int mo24077e() {
            return this.f31310h ? C5139R.animator.mtrl_extended_fab_change_size_expand_motion_spec : C5139R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: f */
        public void mo24078f(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback == null) {
                return;
            }
            if (this.f31310h) {
                onChangedCallback.onExtended(ExtendedFloatingActionButton.this);
            } else {
                onChangedCallback.onShrunken(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        @NonNull
        /* renamed from: h */
        public AnimatorSet mo24079h() {
            MotionSpec mo24101a = mo24101a();
            if (mo24101a.hasPropertyValues("width")) {
                PropertyValuesHolder[] propertyValues = mo24101a.getPropertyValues("width");
                propertyValues[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f31309g.getWidth());
                mo24101a.setPropertyValues("width", propertyValues);
            }
            if (mo24101a.hasPropertyValues("height")) {
                PropertyValuesHolder[] propertyValues2 = mo24101a.getPropertyValues("height");
                propertyValues2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f31309g.getHeight());
                mo24101a.setPropertyValues("height", propertyValues2);
            }
            if (mo24101a.hasPropertyValues("paddingStart")) {
                PropertyValuesHolder[] propertyValues3 = mo24101a.getPropertyValues("paddingStart");
                propertyValues3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f31309g.getPaddingStart());
                mo24101a.setPropertyValues("paddingStart", propertyValues3);
            }
            if (mo24101a.hasPropertyValues("paddingEnd")) {
                PropertyValuesHolder[] propertyValues4 = mo24101a.getPropertyValues("paddingEnd");
                propertyValues4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f31309g.getPaddingEnd());
                mo24101a.setPropertyValues("paddingEnd", propertyValues4);
            }
            if (mo24101a.hasPropertyValues("labelOpacity")) {
                PropertyValuesHolder[] propertyValues5 = mo24101a.getPropertyValues("labelOpacity");
                boolean z = this.f31310h;
                propertyValues5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                mo24101a.setPropertyValues("labelOpacity", propertyValues5);
            }
            return super.m24106m(mo24101a);
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: i */
        public void mo24080i() {
            ExtendedFloatingActionButton.this.f31287x0 = this.f31310h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.f31310h) {
                ExtendedFloatingActionButton.this.f31275A0 = layoutParams.width;
                ExtendedFloatingActionButton.this.f31276B0 = layoutParams.height;
            }
            layoutParams.width = this.f31309g.mo24067a().width;
            layoutParams.height = this.f31309g.mo24067a().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f31309g.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f31309g.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f31288y0 = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f31309g.mo24067a().width;
            layoutParams.height = this.f31309g.mo24067a().height;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.f31287x0 = this.f31310h;
            ExtendedFloatingActionButton.this.f31288y0 = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k */
    /* loaded from: classes6.dex */
    public class C5277k extends AbstractC5283a {

        /* renamed from: g */
        public boolean f31312g;

        public C5277k(C13666eb c13666eb) {
            super(ExtendedFloatingActionButton.this, c13666eb);
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: c */
        public boolean mo24076c() {
            return ExtendedFloatingActionButton.this.m24057w();
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: e */
        public int mo24077e() {
            return C5139R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: f */
        public void mo24078f(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onHidden(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: g */
        public void mo24081g() {
            super.mo24081g();
            this.f31312g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: i */
        public void mo24080i() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f31289z = 0;
            if (this.f31312g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f31312g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f31289z = 1;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$l */
    /* loaded from: classes6.dex */
    public class C5278l extends AbstractC5283a {
        public C5278l(C13666eb c13666eb) {
            super(ExtendedFloatingActionButton.this, c13666eb);
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: c */
        public boolean mo24076c() {
            return ExtendedFloatingActionButton.this.m24058x();
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: e */
        public int mo24077e() {
            return C5139R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: f */
        public void mo24078f(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onShown(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.InterfaceC5285c
        /* renamed from: i */
        public void mo24080i() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f31289z = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC5283a, com.google.android.material.floatingactionbutton.InterfaceC5285c
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f31289z = 2;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$m */
    /* loaded from: classes6.dex */
    public interface InterfaceC5279m {
        /* renamed from: a */
        ViewGroup.LayoutParams mo24067a();

        int getHeight();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: A */
    public final boolean m24055A() {
        return (ViewCompat.isLaidOut(this) || (!m24058x() && this.f31290z0)) && !isInEditMode();
    }

    public void addOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31280Q.mo24104j(animatorListener);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31282q0.mo24104j(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31281k0.mo24104j(animatorListener);
    }

    public void addOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31279O.mo24104j(animatorListener);
    }

    public void extend() {
        m24059y(3, null);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.f31286w0;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    public int getCollapsedSize() {
        int i = this.f31283t0;
        return i < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i;
    }

    @Nullable
    public MotionSpec getExtendMotionSpec() {
        return this.f31280Q.mo24102b();
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.f31282q0.mo24102b();
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.f31281k0.mo24102b();
    }

    @Nullable
    public MotionSpec getShrinkMotionSpec() {
        return this.f31279O.mo24102b();
    }

    public void hide() {
        m24059y(1, null);
    }

    public final boolean isExtended() {
        return this.f31287x0;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f31287x0 && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.f31287x0 = false;
            this.f31279O.mo24080i();
        }
    }

    public void removeOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31280Q.mo24103d(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31282q0.mo24103d(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31281k0.mo24103d(animatorListener);
    }

    public void removeOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f31279O.mo24103d(animatorListener);
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f31290z0 = z;
    }

    public void setExtendMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f31280Q.mo24105k(motionSpec);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i) {
        setExtendMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f31287x0 == z) {
            return;
        }
        InterfaceC5285c interfaceC5285c = z ? this.f31280Q : this.f31279O;
        if (interfaceC5285c.mo24076c()) {
            return;
        }
        interfaceC5285c.mo24080i();
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f31282q0.mo24105k(motionSpec);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f31287x0 || this.f31288y0) {
            return;
        }
        this.f31284u0 = ViewCompat.getPaddingStart(this);
        this.f31285v0 = ViewCompat.getPaddingEnd(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.f31287x0 || this.f31288y0) {
            return;
        }
        this.f31284u0 = i;
        this.f31285v0 = i3;
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f31281k0.mo24105k(motionSpec);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public void setShrinkMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f31279O.mo24105k(motionSpec);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i) {
        setShrinkMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        m24060z();
    }

    public void show() {
        m24059y(0, null);
    }

    public void shrink() {
        m24059y(2, null);
    }

    public void silentlyUpdateTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    /* renamed from: v */
    public final InterfaceC5279m m24056v(int i) {
        C5268b c5268b = new C5268b();
        C5269c c5269c = new C5269c(c5268b);
        return i != 1 ? i != 2 ? new C5270d(c5269c, c5268b) : c5269c : c5268b;
    }

    /* renamed from: w */
    public final boolean m24057w() {
        return getVisibility() == 0 ? this.f31289z == 1 : this.f31289z != 2;
    }

    /* renamed from: x */
    public final boolean m24058x() {
        return getVisibility() != 0 ? this.f31289z == 2 : this.f31289z != 1;
    }

    /* renamed from: y */
    public final void m24059y(int i, @Nullable OnChangedCallback onChangedCallback) {
        InterfaceC5285c interfaceC5285c;
        if (i == 0) {
            interfaceC5285c = this.f31281k0;
        } else if (i == 1) {
            interfaceC5285c = this.f31282q0;
        } else if (i == 2) {
            interfaceC5285c = this.f31279O;
        } else {
            if (i != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i);
            }
            interfaceC5285c = this.f31280Q;
        }
        if (interfaceC5285c.mo24076c()) {
            return;
        }
        if (!m24055A()) {
            interfaceC5285c.mo24080i();
            interfaceC5285c.mo24078f(onChangedCallback);
            return;
        }
        if (i == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.f31275A0 = layoutParams.width;
                this.f31276B0 = layoutParams.height;
            } else {
                this.f31275A0 = getWidth();
                this.f31276B0 = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet mo24079h = interfaceC5285c.mo24079h();
        mo24079h.addListener(new C5271e(interfaceC5285c, onChangedCallback));
        Iterator<Animator.AnimatorListener> it2 = interfaceC5285c.getListeners().iterator();
        while (it2.hasNext()) {
            mo24079h.addListener(it2.next());
        }
        mo24079h.start();
    }

    /* renamed from: z */
    public final void m24060z() {
        this.originalTextCsl = getTextColors();
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.extendedFloatingActionButtonStyle);
    }

    public void extend(@NonNull OnChangedCallback onChangedCallback) {
        m24059y(3, onChangedCallback);
    }

    public void hide(@NonNull OnChangedCallback onChangedCallback) {
        m24059y(1, onChangedCallback);
    }

    public void show(@NonNull OnChangedCallback onChangedCallback) {
        m24059y(0, onChangedCallback);
    }

    public void shrink(@NonNull OnChangedCallback onChangedCallback) {
        m24059y(2, onChangedCallback);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ExtendedFloatingActionButton(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.Nullable android.util.AttributeSet r18, int r19) {
        /*
            r16 = this;
            r0 = r16
            r7 = r18
            r8 = r19
            int r9 = com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.f31260D0
            r1 = r17
            android.content.Context r1 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r1, r7, r8, r9)
            r0.<init>(r1, r7, r8)
            r10 = 0
            r0.f31289z = r10
            com.sunia.HTREnginev2.eb r1 = new com.sunia.HTREnginev2.eb
            r1.<init>()
            r0.f31278J = r1
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$l r11 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$l
            r11.<init>(r1)
            r0.f31281k0 = r11
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k r12 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k
            r12.<init>(r1)
            r0.f31282q0 = r12
            r13 = 1
            r0.f31287x0 = r13
            r0.f31288y0 = r10
            r0.f31290z0 = r10
            android.content.Context r14 = r16.getContext()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior r1 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior
            r1.<init>(r14, r7)
            r0.f31286w0 = r1
            int[] r3 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton
            int[] r6 = new int[r10]
            r1 = r14
            r2 = r18
            r4 = r19
            r5 = r9
            android.content.res.TypedArray r1 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r1, r2, r3, r4, r5, r6)
            int r2 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_showMotionSpec
            com.google.android.material.animation.MotionSpec r2 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r2)
            int r3 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_hideMotionSpec
            com.google.android.material.animation.MotionSpec r3 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r3)
            int r4 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_extendMotionSpec
            com.google.android.material.animation.MotionSpec r4 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r4)
            int r5 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec
            com.google.android.material.animation.MotionSpec r5 = com.google.android.material.animation.MotionSpec.createFromAttribute(r14, r1, r5)
            int r6 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_collapsedSize
            r15 = -1
            int r6 = r1.getDimensionPixelSize(r6, r15)
            r0.f31283t0 = r6
            int r6 = com.google.android.material.C5139R.styleable.ExtendedFloatingActionButton_extendStrategy
            int r6 = r1.getInt(r6, r13)
            r0.f31277C0 = r6
            int r15 = androidx.core.view.ViewCompat.getPaddingStart(r16)
            r0.f31284u0 = r15
            int r15 = androidx.core.view.ViewCompat.getPaddingEnd(r16)
            r0.f31285v0 = r15
            com.sunia.HTREnginev2.eb r15 = new com.sunia.HTREnginev2.eb
            r15.<init>()
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j r10 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$m r6 = r0.m24056v(r6)
            r10.<init>(r15, r6, r13)
            r0.f31280Q = r10
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j r6 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a r13 = new com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a
            r13.<init>()
            r7 = 0
            r6.<init>(r15, r13, r7)
            r0.f31279O = r6
            r11.mo24105k(r2)
            r12.mo24105k(r3)
            r10.mo24105k(r4)
            r6.mo24105k(r5)
            r1.recycle()
            com.google.android.material.shape.CornerSize r1 = com.google.android.material.shape.ShapeAppearanceModel.PILL
            r2 = r18
            com.google.android.material.shape.ShapeAppearanceModel$Builder r1 = com.google.android.material.shape.ShapeAppearanceModel.builder(r14, r2, r8, r9, r1)
            com.google.android.material.shape.ShapeAppearanceModel r1 = r1.build()
            r0.setShapeAppearanceModel(r1)
            r16.m24060z()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        m24060z();
    }
}
