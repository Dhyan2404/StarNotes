package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes6.dex */
public class NavigationRailView extends NavigationBarView {

    /* renamed from: q */
    public static final int f31886q = 49;

    /* renamed from: r */
    public static final int f31887r = 7;

    /* renamed from: s */
    public static final int f31888s = 49;

    /* renamed from: t */
    public static final int f31889t = -1;

    /* renamed from: l */
    public final int f31890l;

    /* renamed from: m */
    @Nullable
    public View f31891m;

    /* renamed from: n */
    @Nullable
    public Boolean f31892n;

    /* renamed from: o */
    @Nullable
    public Boolean f31893o;

    /* renamed from: p */
    @Nullable
    public Boolean f31894p;

    /* renamed from: com.google.android.material.navigationrail.NavigationRailView$a */
    /* loaded from: classes6.dex */
    public class C5344a implements ViewUtils.OnApplyWindowInsetsListener {
        public C5344a() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
            Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
            NavigationRailView navigationRailView = NavigationRailView.this;
            if (navigationRailView.m24423j(navigationRailView.f31892n)) {
                relativePadding.top += insets.top;
            }
            NavigationRailView navigationRailView2 = NavigationRailView.this;
            if (navigationRailView2.m24423j(navigationRailView2.f31893o)) {
                relativePadding.bottom += insets.bottom;
            }
            NavigationRailView navigationRailView3 = NavigationRailView.this;
            if (navigationRailView3.m24423j(navigationRailView3.f31894p)) {
                relativePadding.start += ViewUtils.isLayoutRtl(view) ? insets.right : insets.left;
            }
            relativePadding.applyToView(view);
            return windowInsetsCompat;
        }
    }

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    public void addHeaderView(@LayoutRes int i) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false));
    }

    /* renamed from: g */
    public final void m24420g() {
        ViewUtils.doOnApplyWindowInsets(this, new C5344a());
    }

    @Nullable
    public View getHeaderView() {
        return this.f31891m;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    /* renamed from: h */
    public final boolean m24421h() {
        View view = this.f31891m;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: i */
    public final int m24422i(int i) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* renamed from: j */
    public final boolean m24423j(Boolean bool) {
        return bool != null ? bool.booleanValue() : ViewCompat.getFitsSystemWindows(this);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i5 = 0;
        if (m24421h()) {
            int bottom = this.f31891m.getBottom() + this.f31890l;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i5 = bottom - top;
            }
        } else if (navigationRailMenuView.m24411k()) {
            i5 = this.f31890l;
        }
        if (i5 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i5, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int m24422i = m24422i(i);
        super.onMeasure(m24422i, i2);
        if (m24421h()) {
            measureChild(getNavigationRailMenuView(), m24422i, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f31891m.getMeasuredHeight()) - this.f31890l, Integer.MIN_VALUE));
        }
    }

    public void removeHeaderView() {
        View view = this.f31891m;
        if (view != null) {
            removeView(view);
            this.f31891m = null;
        }
    }

    public void setItemMinimumHeight(@Px int i) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.navigationRailStyle);
    }

    public void addHeaderView(@NonNull View view) {
        removeHeaderView();
        this.f31891m = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f31890l;
        addView(view, 0, layoutParams);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationRailMenuView createNavigationBarMenuView(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, C5139R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f31892n = null;
        this.f31893o = null;
        this.f31894p = null;
        this.f31890l = getResources().getDimensionPixelSize(C5139R.dimen.mtrl_navigation_rail_margin);
        Context context2 = getContext();
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C5139R.styleable.NavigationRailView, i, i2, new int[0]);
        int resourceId = obtainTintedStyledAttributes.getResourceId(C5139R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            addHeaderView(resourceId);
        }
        setMenuGravity(obtainTintedStyledAttributes.getInt(C5139R.styleable.NavigationRailView_menuGravity, 49));
        if (obtainTintedStyledAttributes.hasValue(C5139R.styleable.NavigationRailView_itemMinHeight)) {
            setItemMinimumHeight(obtainTintedStyledAttributes.getDimensionPixelSize(C5139R.styleable.NavigationRailView_itemMinHeight, -1));
        }
        if (obtainTintedStyledAttributes.hasValue(C5139R.styleable.NavigationRailView_paddingTopSystemWindowInsets)) {
            this.f31892n = Boolean.valueOf(obtainTintedStyledAttributes.getBoolean(C5139R.styleable.NavigationRailView_paddingTopSystemWindowInsets, false));
        }
        if (obtainTintedStyledAttributes.hasValue(C5139R.styleable.NavigationRailView_paddingBottomSystemWindowInsets)) {
            this.f31893o = Boolean.valueOf(obtainTintedStyledAttributes.getBoolean(C5139R.styleable.NavigationRailView_paddingBottomSystemWindowInsets, false));
        }
        if (obtainTintedStyledAttributes.hasValue(C5139R.styleable.NavigationRailView_paddingStartSystemWindowInsets)) {
            this.f31894p = Boolean.valueOf(obtainTintedStyledAttributes.getBoolean(C5139R.styleable.NavigationRailView_paddingStartSystemWindowInsets, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(C5139R.dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(C5139R.dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float lerp = AnimationUtils.lerp(0.0f, 1.0f, 0.3f, 1.0f, MaterialResources.getFontScale(context2) - 1.0f);
        float lerp2 = AnimationUtils.lerp(getItemPaddingTop(), dimensionPixelOffset, lerp);
        float lerp3 = AnimationUtils.lerp(getItemPaddingBottom(), dimensionPixelOffset2, lerp);
        setItemPaddingTop(Math.round(lerp2));
        setItemPaddingBottom(Math.round(lerp3));
        obtainTintedStyledAttributes.recycle();
        m24420g();
    }
}
