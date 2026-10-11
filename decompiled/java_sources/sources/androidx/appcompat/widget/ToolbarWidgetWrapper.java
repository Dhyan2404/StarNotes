package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* renamed from: s */
    public static final String f2094s = "ToolbarWidgetWrapper";

    /* renamed from: t */
    public static final int f2095t = 3;

    /* renamed from: u */
    public static final long f2096u = 200;

    /* renamed from: a */
    public Toolbar f2097a;

    /* renamed from: b */
    public int f2098b;

    /* renamed from: c */
    public View f2099c;

    /* renamed from: d */
    public Spinner f2100d;

    /* renamed from: e */
    public View f2101e;

    /* renamed from: f */
    public Drawable f2102f;

    /* renamed from: g */
    public Drawable f2103g;

    /* renamed from: h */
    public Drawable f2104h;

    /* renamed from: i */
    public boolean f2105i;

    /* renamed from: j */
    public CharSequence f2106j;

    /* renamed from: k */
    public CharSequence f2107k;

    /* renamed from: l */
    public CharSequence f2108l;

    /* renamed from: m */
    public Window.Callback f2109m;

    /* renamed from: n */
    public boolean f2110n;

    /* renamed from: o */
    public ActionMenuPresenter f2111o;

    /* renamed from: p */
    public int f2112p;

    /* renamed from: q */
    public int f2113q;

    /* renamed from: r */
    public Drawable f2114r;

    /* renamed from: androidx.appcompat.widget.ToolbarWidgetWrapper$a */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0302a implements View.OnClickListener {

        /* renamed from: e */
        public final ActionMenuItem f2115e;

        public ViewOnClickListenerC0302a() {
            this.f2115e = new ActionMenuItem(ToolbarWidgetWrapper.this.f2097a.getContext(), 0, 16908332, 0, 0, ToolbarWidgetWrapper.this.f2106j);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
            Window.Callback callback = toolbarWidgetWrapper.f2109m;
            if (callback == null || !toolbarWidgetWrapper.f2110n) {
                return;
            }
            callback.onMenuItemSelected(0, this.f2115e);
        }
    }

    /* renamed from: androidx.appcompat.widget.ToolbarWidgetWrapper$b */
    /* loaded from: classes3.dex */
    public class C0303b extends ViewPropertyAnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f2117a = false;

        /* renamed from: b */
        public final /* synthetic */ int f2118b;

        public C0303b(int i) {
            this.f2118b = i;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f2117a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f2117a) {
                return;
            }
            ToolbarWidgetWrapper.this.f2097a.setVisibility(this.f2118b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            ToolbarWidgetWrapper.this.f2097a.setVisibility(0);
        }
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0118R.string.abc_action_bar_up_description, C0118R.drawable.abc_ic_ab_back_material);
    }

    /* renamed from: a */
    public final int m971a() {
        if (this.f2097a.getNavigationIcon() == null) {
            return 11;
        }
        this.f2114r = this.f2097a.getNavigationIcon();
        return 15;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void animateToVisibility(int i) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = setupAnimatorToVisibility(i, 200L);
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.start();
        }
    }

    /* renamed from: b */
    public final void m972b() {
        if (this.f2100d == null) {
            this.f2100d = new AppCompatSpinner(getContext(), null, C0118R.attr.actionDropDownStyle);
            this.f2100d.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388627));
        }
    }

    /* renamed from: c */
    public final void m973c(CharSequence charSequence) {
        this.f2106j = charSequence;
        if ((this.f2098b & 8) != 0) {
            this.f2097a.setTitle(charSequence);
            if (this.f2105i) {
                ViewCompat.setAccessibilityPaneTitle(this.f2097a.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean canShowOverflowMenu() {
        return this.f2097a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void collapseActionView() {
        this.f2097a.collapseActionView();
    }

    /* renamed from: d */
    public final void m974d() {
        if ((this.f2098b & 4) != 0) {
            if (TextUtils.isEmpty(this.f2108l)) {
                this.f2097a.setNavigationContentDescription(this.f2113q);
            } else {
                this.f2097a.setNavigationContentDescription(this.f2108l);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void dismissPopupMenus() {
        this.f2097a.dismissPopupMenus();
    }

    /* renamed from: e */
    public final void m975e() {
        if ((this.f2098b & 4) == 0) {
            this.f2097a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f2097a;
        Drawable drawable = this.f2104h;
        if (drawable == null) {
            drawable = this.f2114r;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* renamed from: f */
    public final void m976f() {
        Drawable drawable;
        int i = this.f2098b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f2103g;
            if (drawable == null) {
                drawable = this.f2102f;
            }
        } else {
            drawable = this.f2102f;
        }
        this.f2097a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Context getContext() {
        return this.f2097a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public View getCustomView() {
        return this.f2101e;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDisplayOptions() {
        return this.f2098b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownItemCount() {
        Spinner spinner = this.f2100d;
        if (spinner != null) {
            return spinner.getCount();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownSelectedPosition() {
        Spinner spinner = this.f2100d;
        if (spinner != null) {
            return spinner.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getHeight() {
        return this.f2097a.getHeight();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Menu getMenu() {
        return this.f2097a.getMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getNavigationMode() {
        return this.f2112p;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getSubtitle() {
        return this.f2097a.getSubtitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.f2097a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewGroup getViewGroup() {
        return this.f2097a;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getVisibility() {
        return this.f2097a.getVisibility();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasEmbeddedTabs() {
        return this.f2099c != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasExpandedActionView() {
        return this.f2097a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasIcon() {
        return this.f2102f != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasLogo() {
        return this.f2103g != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hideOverflowMenu() {
        return this.f2097a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initIndeterminateProgress() {
        Log.i(f2094s, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initProgress() {
        Log.i(f2094s, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowPending() {
        return this.f2097a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowing() {
        return this.f2097a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isTitleTruncated() {
        return this.f2097a.isTitleTruncated();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void restoreHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f2097a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void saveHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f2097a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setBackgroundDrawable(Drawable drawable) {
        this.f2097a.setBackground(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCollapsible(boolean z) {
        this.f2097a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCustomView(View view) {
        View view2 = this.f2101e;
        if (view2 != null && (this.f2098b & 16) != 0) {
            this.f2097a.removeView(view2);
        }
        this.f2101e = view;
        if (view == null || (this.f2098b & 16) == 0) {
            return;
        }
        this.f2097a.addView(view);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationContentDescription(int i) {
        if (i == this.f2113q) {
            return;
        }
        this.f2113q = i;
        if (TextUtils.isEmpty(this.f2097a.getNavigationContentDescription())) {
            setNavigationContentDescription(this.f2113q);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationIcon(Drawable drawable) {
        if (this.f2114r != drawable) {
            this.f2114r = drawable;
            m975e();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDisplayOptions(int i) {
        View view;
        int i2 = this.f2098b ^ i;
        this.f2098b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m974d();
                }
                m975e();
            }
            if ((i2 & 3) != 0) {
                m976f();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f2097a.setTitle(this.f2106j);
                    this.f2097a.setSubtitle(this.f2107k);
                } else {
                    this.f2097a.setTitle((CharSequence) null);
                    this.f2097a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f2101e) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f2097a.addView(view);
            } else {
                this.f2097a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        m972b();
        this.f2100d.setAdapter(spinnerAdapter);
        this.f2100d.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownSelectedPosition(int i) {
        Spinner spinner = this.f2100d;
        if (spinner == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        spinner.setSelection(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f2099c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f2097a;
            if (parent == toolbar) {
                toolbar.removeView(this.f2099c);
            }
        }
        this.f2099c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f2112p != 2) {
            return;
        }
        this.f2097a.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f2099c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.gravity = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setHomeButtonEnabled(boolean z) {
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(int i) {
        setLogo(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (this.f2111o == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f2097a.getContext());
            this.f2111o = actionMenuPresenter;
            actionMenuPresenter.setId(C0118R.id.action_menu_presenter);
        }
        this.f2111o.setCallback(callback);
        this.f2097a.setMenu((MenuBuilder) menu, this.f2111o);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f2097a.setMenuCallbacks(callback, callback2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuPrepared() {
        this.f2110n = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        this.f2108l = charSequence;
        m974d();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(Drawable drawable) {
        this.f2104h = drawable;
        m975e();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationMode(int i) {
        View view;
        int i2 = this.f2112p;
        if (i != i2) {
            if (i2 == 1) {
                Spinner spinner = this.f2100d;
                if (spinner != null) {
                    ViewParent parent = spinner.getParent();
                    Toolbar toolbar = this.f2097a;
                    if (parent == toolbar) {
                        toolbar.removeView(this.f2100d);
                    }
                }
            } else if (i2 == 2 && (view = this.f2099c) != null) {
                ViewParent parent2 = view.getParent();
                Toolbar toolbar2 = this.f2097a;
                if (parent2 == toolbar2) {
                    toolbar2.removeView(this.f2099c);
                }
            }
            this.f2112p = i;
            if (i != 0) {
                if (i == 1) {
                    m972b();
                    this.f2097a.addView(this.f2100d, 0);
                    return;
                }
                if (i != 2) {
                    throw new IllegalArgumentException("Invalid navigation mode " + i);
                }
                View view2 = this.f2099c;
                if (view2 != null) {
                    this.f2097a.addView(view2, 0);
                    Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f2099c.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                    layoutParams.gravity = 8388691;
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setSubtitle(CharSequence charSequence) {
        this.f2107k = charSequence;
        if ((this.f2098b & 8) != 0) {
            this.f2097a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.f2105i = true;
        m973c(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setVisibility(int i) {
        this.f2097a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.f2109m = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f2105i) {
            return;
        }
        m973c(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i, long j) {
        return ViewCompat.animate(this.f2097a).alpha(i == 0 ? 1.0f : 0.0f).setDuration(j).setListener(new C0303b(i));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean showOverflowMenu() {
        return this.f2097a.showOverflowMenu();
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f2112p = 0;
        this.f2113q = 0;
        this.f2097a = toolbar;
        this.f2106j = toolbar.getTitle();
        this.f2107k = toolbar.getSubtitle();
        this.f2105i = this.f2106j != null;
        this.f2104h = toolbar.getNavigationIcon();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(toolbar.getContext(), null, C0118R.styleable.ActionBar, C0118R.attr.actionBarStyle, 0);
        this.f2114r = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence text = obtainStyledAttributes.getText(C0118R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = obtainStyledAttributes.getText(C0118R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable2 = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_logo);
            if (drawable2 != null) {
                setLogo(drawable2);
            }
            Drawable drawable3 = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_icon);
            if (drawable3 != null) {
                setIcon(drawable3);
            }
            if (this.f2104h == null && (drawable = this.f2114r) != null) {
                setNavigationIcon(drawable);
            }
            setDisplayOptions(obtainStyledAttributes.getInt(C0118R.styleable.ActionBar_displayOptions, 0));
            int resourceId = obtainStyledAttributes.getResourceId(C0118R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                setCustomView(LayoutInflater.from(this.f2097a.getContext()).inflate(resourceId, (ViewGroup) this.f2097a, false));
                setDisplayOptions(this.f2098b | 16);
            }
            int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0118R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = this.f2097a.getLayoutParams();
                layoutParams.height = layoutDimension;
                this.f2097a.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                this.f2097a.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(C0118R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                Toolbar toolbar2 = this.f2097a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), resourceId2);
            }
            int resourceId3 = obtainStyledAttributes.getResourceId(C0118R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                Toolbar toolbar3 = this.f2097a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), resourceId3);
            }
            int resourceId4 = obtainStyledAttributes.getResourceId(C0118R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                this.f2097a.setPopupTheme(resourceId4);
            }
        } else {
            this.f2098b = m971a();
        }
        obtainStyledAttributes.recycle();
        setDefaultNavigationContentDescription(i);
        this.f2108l = this.f2097a.getNavigationContentDescription();
        this.f2097a.setNavigationOnClickListener(new ViewOnClickListenerC0302a());
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.f2102f = drawable;
        m976f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(Drawable drawable) {
        this.f2103g = drawable;
        m976f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i == 0 ? null : getContext().getString(i));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(int i) {
        setNavigationIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }
}
