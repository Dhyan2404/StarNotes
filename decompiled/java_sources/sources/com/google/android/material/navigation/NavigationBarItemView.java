package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {

    /* renamed from: A0 */
    public static final C5334d f31767A0;

    /* renamed from: B0 */
    public static final C5334d f31768B0;

    /* renamed from: y0 */
    public static final int f31769y0 = -1;

    /* renamed from: z0 */
    public static final int[] f31770z0 = {R.attr.state_checked};

    /* renamed from: J */
    @Nullable
    public Drawable f31771J;

    /* renamed from: O */
    public ValueAnimator f31772O;

    /* renamed from: Q */
    public C5334d f31773Q;

    /* renamed from: e */
    public boolean f31774e;

    /* renamed from: f */
    public ColorStateList f31775f;

    /* renamed from: g */
    @Nullable
    public Drawable f31776g;

    /* renamed from: h */
    public int f31777h;

    /* renamed from: i */
    public int f31778i;

    /* renamed from: j */
    public int f31779j;

    /* renamed from: k */
    public float f31780k;

    /* renamed from: k0 */
    public float f31781k0;

    /* renamed from: l */
    public float f31782l;

    /* renamed from: m */
    public float f31783m;

    /* renamed from: n */
    public int f31784n;

    /* renamed from: o */
    public boolean f31785o;

    /* renamed from: p */
    @Nullable
    public final FrameLayout f31786p;

    /* renamed from: q */
    @Nullable
    public final View f31787q;

    /* renamed from: q0 */
    public boolean f31788q0;

    /* renamed from: r */
    public final ImageView f31789r;

    /* renamed from: s */
    public final ViewGroup f31790s;

    /* renamed from: t */
    public final TextView f31791t;

    /* renamed from: t0 */
    public int f31792t0;

    /* renamed from: u */
    public final TextView f31793u;

    /* renamed from: u0 */
    public int f31794u0;

    /* renamed from: v */
    public int f31795v;

    /* renamed from: v0 */
    public boolean f31796v0;

    /* renamed from: w */
    @StyleRes
    public int f31797w;

    /* renamed from: w0 */
    public int f31798w0;

    /* renamed from: x */
    @Nullable
    public MenuItemImpl f31799x;

    /* renamed from: x0 */
    @Nullable
    public BadgeDrawable f31800x0;

    /* renamed from: y */
    @Nullable
    public ColorStateList f31801y;

    /* renamed from: z */
    @Nullable
    public Drawable f31802z;

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$a */
    /* loaded from: classes6.dex */
    public class ViewOnLayoutChangeListenerC5331a implements View.OnLayoutChangeListener {
        public ViewOnLayoutChangeListenerC5331a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (NavigationBarItemView.this.f31789r.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.m24370u(navigationBarItemView.f31789r);
            }
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$b */
    /* loaded from: classes6.dex */
    public class RunnableC5332b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f31804e;

        public RunnableC5332b(int i) {
            this.f31804e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            NavigationBarItemView.this.m24371v(this.f31804e);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$c */
    /* loaded from: classes6.dex */
    public class C5333c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ float f31806e;

        public C5333c(float f) {
            this.f31806e = f;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.m24367o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f31806e);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$d */
    /* loaded from: classes6.dex */
    public static class C5334d {

        /* renamed from: a */
        public static final float f31808a = 0.4f;

        /* renamed from: b */
        public static final float f31809b = 1.0f;

        /* renamed from: c */
        public static final float f31810c = 0.2f;

        public C5334d() {
        }

        /* renamed from: a */
        public float m24373a(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
            return AnimationUtils.lerp(0.0f, 1.0f, f2 == 0.0f ? 0.8f : 0.0f, f2 == 0.0f ? 1.0f : 0.2f, f);
        }

        /* renamed from: b */
        public float m24374b(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
            return AnimationUtils.lerp(0.4f, 1.0f, f);
        }

        /* renamed from: c */
        public float mo24375c(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
            return 1.0f;
        }

        /* renamed from: d */
        public void m24376d(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @NonNull View view) {
            view.setScaleX(m24374b(f, f2));
            view.setScaleY(mo24375c(f, f2));
            view.setAlpha(m24373a(f, f2));
        }

        public /* synthetic */ C5334d(ViewOnLayoutChangeListenerC5331a viewOnLayoutChangeListenerC5331a) {
            this();
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$e */
    /* loaded from: classes6.dex */
    public static class C5335e extends C5334d {
        public C5335e() {
            super(null);
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.C5334d
        /* renamed from: c */
        public float mo24375c(float f, float f2) {
            return m24374b(f, f2);
        }

        public /* synthetic */ C5335e(ViewOnLayoutChangeListenerC5331a viewOnLayoutChangeListenerC5331a) {
            this();
        }
    }

    static {
        ViewOnLayoutChangeListenerC5331a viewOnLayoutChangeListenerC5331a = null;
        f31767A0 = new C5334d(viewOnLayoutChangeListenerC5331a);
        f31768B0 = new C5335e(viewOnLayoutChangeListenerC5331a);
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f31774e = false;
        this.f31795v = -1;
        this.f31797w = 0;
        this.f31773Q = f31767A0;
        this.f31781k0 = 0.0f;
        this.f31788q0 = false;
        this.f31792t0 = 0;
        this.f31794u0 = 0;
        this.f31796v0 = false;
        this.f31798w0 = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f31786p = (FrameLayout) findViewById(C5139R.id.navigation_bar_item_icon_container);
        this.f31787q = findViewById(C5139R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(C5139R.id.navigation_bar_item_icon_view);
        this.f31789r = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(C5139R.id.navigation_bar_item_labels_group);
        this.f31790s = viewGroup;
        TextView textView = (TextView) findViewById(C5139R.id.navigation_bar_item_small_label_view);
        this.f31791t = textView;
        TextView textView2 = (TextView) findViewById(C5139R.id.navigation_bar_item_large_label_view);
        this.f31793u = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f31777h = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f31778i = viewGroup.getPaddingBottom();
        this.f31779j = getResources().getDimensionPixelSize(C5139R.dimen.m3_navigation_item_active_indicator_label_padding);
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        m24358e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC5331a());
        }
    }

    /* renamed from: g */
    public static Drawable m24353g(@NonNull ColorStateList colorStateList) {
        return new RippleDrawable(RippleUtils.convertToRippleDrawableColor(colorStateList), null, null);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f31786p;
        return frameLayout != null ? frameLayout : this.f31789r;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < indexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconHeight() {
        return ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin + getIconOrContainer().getMeasuredHeight();
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.f31800x0;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.f31800x0.getHorizontalOffset();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f31789r.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    /* renamed from: p */
    public static void m24354p(TextView textView, @StyleRes int i) {
        TextViewCompat.setTextAppearance(textView, i);
        int unscaledTextSize = MaterialResources.getUnscaledTextSize(textView.getContext(), i, 0);
        if (unscaledTextSize != 0) {
            textView.setTextSize(0, unscaledTextSize);
        }
    }

    /* renamed from: q */
    public static void m24355q(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: r */
    public static void m24356r(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: x */
    public static void m24357x(@NonNull View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f31786p;
        if (frameLayout != null && this.f31788q0) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: e */
    public final void m24358e(float f, float f2) {
        this.f31780k = f - f2;
        this.f31782l = (f2 * 1.0f) / f;
        this.f31783m = (f * 1.0f) / f2;
    }

    /* renamed from: f */
    public void m24359f() {
        m24366n();
        this.f31799x = null;
        this.f31781k0 = 0.0f;
        this.f31774e = false;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f31787q;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.f31800x0;
    }

    @DrawableRes
    public int getItemBackgroundResId() {
        return C5139R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.f31799x;
    }

    @DimenRes
    public int getItemDefaultMarginResId() {
        return C5139R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f31795v;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31790s.getLayoutParams();
        return getSuggestedIconHeight() + (this.f31790s.getVisibility() == 0 ? this.f31779j : 0) + layoutParams.topMargin + this.f31790s.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31790s.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f31790s.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Nullable
    /* renamed from: h */
    public final FrameLayout m24360h(View view) {
        ImageView imageView = this.f31789r;
        if (view == imageView && BadgeUtils.USE_COMPAT_PARENT) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    /* renamed from: i */
    public final boolean m24361i() {
        return this.f31800x0 != null;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f31799x = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.f31774e = true;
    }

    /* renamed from: j */
    public final boolean m24362j() {
        return this.f31796v0 && this.f31784n == 2;
    }

    /* renamed from: k */
    public final void m24363k(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        if (!this.f31788q0 || !this.f31774e || !ViewCompat.isAttachedToWindow(this)) {
            m24367o(f, f);
            return;
        }
        ValueAnimator valueAnimator = this.f31772O;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f31772O = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f31781k0, f);
        this.f31772O = ofFloat;
        ofFloat.addUpdateListener(new C5333c(f));
        this.f31772O.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        this.f31772O.setDuration(MotionUtils.resolveThemeDuration(getContext(), C5139R.attr.motionDurationLong2, getResources().getInteger(C5139R.integer.material_motion_duration_long_1)));
        this.f31772O.start();
    }

    /* renamed from: l */
    public final void m24364l() {
        MenuItemImpl menuItemImpl = this.f31799x;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    /* renamed from: m */
    public final void m24365m() {
        Drawable drawable = this.f31776g;
        RippleDrawable rippleDrawable = null;
        boolean z = true;
        if (this.f31775f != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.f31788q0 && getActiveIndicatorDrawable() != null && this.f31786p != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.f31775f), null, activeIndicatorDrawable);
                z = false;
            } else if (drawable == null) {
                drawable = m24353g(this.f31775f);
            }
        }
        FrameLayout frameLayout = this.f31786p;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            this.f31786p.setForeground(rippleDrawable);
        }
        ViewCompat.setBackground(this, drawable);
        setDefaultFocusHighlightEnabled(z);
    }

    /* renamed from: n */
    public void m24366n() {
        m24369t(this.f31789r);
    }

    /* renamed from: o */
    public final void m24367o(@FloatRange(from = 0.0d, m280to = 1.0d) float f, float f2) {
        View view = this.f31787q;
        if (view != null) {
            this.f31773Q.m24376d(f, f2, view);
        }
        this.f31781k0 = f;
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f31799x;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f31799x.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f31770z0);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f31800x0;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f31799x.getTitle();
            if (!TextUtils.isEmpty(this.f31799x.getContentDescription())) {
                title = this.f31799x.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f31800x0.getContentDescription()));
        }
        AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            wrap.setClickable(false);
            wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        wrap.setRoleDescription(getResources().getString(C5139R.string.item_view_role_description));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new RunnableC5332b(i));
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    /* renamed from: s */
    public final void m24368s(@Nullable View view) {
        if (m24361i() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            BadgeUtils.attachBadgeDrawable(this.f31800x0, view, m24360h(view));
        }
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f31787q;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        m24365m();
    }

    public void setActiveIndicatorEnabled(boolean z) {
        this.f31788q0 = z;
        m24365m();
        View view = this.f31787q;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i) {
        this.f31794u0 = i;
        m24371v(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i) {
        if (this.f31779j != i) {
            this.f31779j = i;
            m24364l();
        }
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i) {
        this.f31798w0 = i;
        m24371v(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z) {
        this.f31796v0 = z;
    }

    public void setActiveIndicatorWidth(int i) {
        this.f31792t0 = i;
        m24371v(getWidth());
    }

    public void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        if (this.f31800x0 == badgeDrawable) {
            return;
        }
        if (m24361i() && this.f31789r != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            m24369t(this.f31789r);
        }
        this.f31800x0 = badgeDrawable;
        ImageView imageView = this.f31789r;
        if (imageView != null) {
            m24368s(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        this.f31793u.setPivotX(r0.getWidth() / 2);
        this.f31793u.setPivotY(r0.getBaseline());
        this.f31791t.setPivotX(r0.getWidth() / 2);
        this.f31791t.setPivotY(r0.getBaseline());
        m24363k(z ? 1.0f : 0.0f);
        int i = this.f31784n;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m24356r(getIconOrContainer(), this.f31777h, 49);
                    m24357x(this.f31790s, this.f31778i);
                    this.f31793u.setVisibility(0);
                } else {
                    m24356r(getIconOrContainer(), this.f31777h, 17);
                    m24357x(this.f31790s, 0);
                    this.f31793u.setVisibility(4);
                }
                this.f31791t.setVisibility(4);
            } else if (i == 1) {
                m24357x(this.f31790s, this.f31778i);
                if (z) {
                    m24356r(getIconOrContainer(), (int) (this.f31777h + this.f31780k), 49);
                    m24355q(this.f31793u, 1.0f, 1.0f, 0);
                    TextView textView = this.f31791t;
                    float f = this.f31782l;
                    m24355q(textView, f, f, 4);
                } else {
                    m24356r(getIconOrContainer(), this.f31777h, 49);
                    TextView textView2 = this.f31793u;
                    float f2 = this.f31783m;
                    m24355q(textView2, f2, f2, 4);
                    m24355q(this.f31791t, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                m24356r(getIconOrContainer(), this.f31777h, 17);
                this.f31793u.setVisibility(8);
                this.f31791t.setVisibility(8);
            }
        } else if (this.f31785o) {
            if (z) {
                m24356r(getIconOrContainer(), this.f31777h, 49);
                m24357x(this.f31790s, this.f31778i);
                this.f31793u.setVisibility(0);
            } else {
                m24356r(getIconOrContainer(), this.f31777h, 17);
                m24357x(this.f31790s, 0);
                this.f31793u.setVisibility(4);
            }
            this.f31791t.setVisibility(4);
        } else {
            m24357x(this.f31790s, this.f31778i);
            if (z) {
                m24356r(getIconOrContainer(), (int) (this.f31777h + this.f31780k), 49);
                m24355q(this.f31793u, 1.0f, 1.0f, 0);
                TextView textView3 = this.f31791t;
                float f3 = this.f31782l;
                m24355q(textView3, f3, f3, 4);
            } else {
                m24356r(getIconOrContainer(), this.f31777h, 49);
                TextView textView4 = this.f31793u;
                float f4 = this.f31783m;
                m24355q(textView4, f4, f4, 4);
                m24355q(this.f31791t, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f31791t.setEnabled(z);
        this.f31793u.setEnabled(z);
        this.f31789r.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f31802z) {
            return;
        }
        this.f31802z = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f31771J = drawable;
            ColorStateList colorStateList = this.f31801y;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f31789r.setImageDrawable(drawable);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31789r.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f31789r.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f31801y = colorStateList;
        if (this.f31799x == null || (drawable = this.f31771J) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f31771J.invalidateSelf();
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemPaddingBottom(int i) {
        if (this.f31778i != i) {
            this.f31778i = i;
            m24364l();
        }
    }

    public void setItemPaddingTop(int i) {
        if (this.f31777h != i) {
            this.f31777h = i;
            m24364l();
        }
    }

    public void setItemPosition(int i) {
        this.f31795v = i;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f31775f = colorStateList;
        m24365m();
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f31784n != i) {
            this.f31784n = i;
            m24372w();
            m24371v(getWidth());
            m24364l();
        }
    }

    public void setShifting(boolean z) {
        if (this.f31785o != z) {
            this.f31785o = z;
            m24364l();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        this.f31797w = i;
        m24354p(this.f31793u, i);
        m24358e(this.f31791t.getTextSize(), this.f31793u.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z) {
        setTextAppearanceActive(this.f31797w);
        TextView textView = this.f31793u;
        textView.setTypeface(textView.getTypeface(), z ? 1 : 0);
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        m24354p(this.f31791t, i);
        m24358e(this.f31791t.getTextSize(), this.f31793u.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f31791t.setTextColor(colorStateList);
            this.f31793u.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(@Nullable CharSequence charSequence) {
        this.f31791t.setText(charSequence);
        this.f31793u.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f31799x;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f31799x;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f31799x.getTooltipText();
        }
        TooltipCompat.setTooltipText(this, charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    /* renamed from: t */
    public final void m24369t(@Nullable View view) {
        if (m24361i()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeUtils.detachBadgeDrawable(this.f31800x0, view);
            }
            this.f31800x0 = null;
        }
    }

    /* renamed from: u */
    public final void m24370u(View view) {
        if (m24361i()) {
            BadgeUtils.setBadgeDrawableBounds(this.f31800x0, view, m24360h(view));
        }
    }

    /* renamed from: v */
    public final void m24371v(int i) {
        if (this.f31787q == null || i <= 0) {
            return;
        }
        int min = Math.min(this.f31792t0, i - (this.f31798w0 * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31787q.getLayoutParams();
        layoutParams.height = m24362j() ? min : this.f31794u0;
        layoutParams.width = min;
        this.f31787q.setLayoutParams(layoutParams);
    }

    /* renamed from: w */
    public final void m24372w() {
        if (m24362j()) {
            this.f31773Q = f31768B0;
        } else {
            this.f31773Q = f31767A0;
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f31776g = drawable;
        m24365m();
    }
}
