package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatTabLayoutViewHelper extends AbstractC14698yb<TintTabLayoutView> {

    /* renamed from: b */
    public int f46900b;

    /* renamed from: c */
    public int f46901c;

    /* renamed from: d */
    public int f46902d;

    /* renamed from: e */
    public int f46903e;

    /* renamed from: f */
    public int f46904f;

    /* renamed from: g */
    public int f46905g;

    /* renamed from: h */
    public int f46906h;

    /* renamed from: i */
    public boolean f46907i;

    /* renamed from: j */
    public int f46908j;

    /* renamed from: k */
    public int f46909k;

    public AppCompatTabLayoutViewHelper(TintTabLayoutView tintTabLayoutView, TintManager tintManager) {
        super(tintTabLayoutView, tintManager);
        this.f46900b = -1;
        this.f46901c = -1;
        this.f46902d = -1;
        this.f46903e = -1;
        this.f46904f = -1;
        this.f46905g = -1;
        this.f46906h = 1;
        this.f46907i = false;
        this.f46908j = -1;
        this.f46909k = -1;
    }

    /* renamed from: a */
    public final void m36322a() {
        int i = this.f46901c;
        if (i != -1 && this.f46902d != -1) {
            ((TintTabLayoutView) this.mView).setTabTextColors(ThemeUtils.getColorById(i), ThemeUtils.getColorById(this.f46902d));
        }
        if (this.f46903e != -1) {
            ((TintTabLayoutView) this.mView).setTabTextColors(ThemeUtils.getThemeColorStateList(((TintTabLayoutView) this.mView).getContext(), this.f46903e));
        }
        int i2 = this.f46900b;
        if (i2 != -1) {
            ((TintTabLayoutView) this.mView).setSelectedTabIndicatorColor(ThemeUtils.getColorById(i2));
        }
        if (this.f46904f != -1) {
            ((TintTabLayoutView) this.mView).setTabRippleColor(ThemeUtils.getThemeColorStateList(((TintTabLayoutView) this.mView).getContext(), this.f46904f));
            ((TintTabLayoutView) this.mView).setUnboundedRipple(true);
        }
        if (this.f46905g != -1) {
            ((TintTabLayoutView) this.mView).setTabIconTint(ThemeUtils.getThemeColorStateList(((TintTabLayoutView) this.mView).getContext(), this.f46905g));
        }
        int i3 = this.f46906h;
        if (i3 != -1) {
            ((TintTabLayoutView) this.mView).setTabMode(i3);
        }
        int i4 = this.f46909k;
        if (i4 != -1) {
            ((TintTabLayoutView) this.mView).setBackground(ThemeUtils.getThemeDrawable(i4));
        }
        initTabViewBackgroundColor();
        ((TintTabLayoutView) this.mView).setUnboundedRipple(this.f46907i);
    }

    public void initTabViewBackgroundColor() {
        TabLayout.TabView tabView;
        if (this.f46908j != -1) {
            for (int i = 0; i < ((TintTabLayoutView) this.mView).getTabCount(); i++) {
                TabLayout.Tab tabAt = ((TintTabLayoutView) this.mView).getTabAt(i);
                if (tabAt != null && (tabView = tabAt.view) != null) {
                    tabView.setBackground(ThemeUtils.getThemeDrawable(this.f46908j));
                }
            }
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintTabLayoutView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintTabLayoutHelper);
        this.f46900b = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabIndicatorColor, -1);
        this.f46901c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabTextColor, -1);
        this.f46902d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabSelectedTextColor, -1);
        this.f46903e = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabTextSelector, -1);
        this.f46904f = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_rippleColorRes, -1);
        this.f46905g = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabIconTint, -1);
        this.f46906h = obtainStyledAttributes.getInt(C7996R.styleable.TintTabLayoutHelper_tabMode, 1);
        this.f46907i = obtainStyledAttributes.getBoolean(C7996R.styleable.TintTabLayoutHelper_tabUnboundedRipple, false);
        this.f46908j = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_tabViewBackground, -1);
        this.f46909k = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTabLayoutHelper_background, -1);
        m36322a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m36322a();
    }
}
