package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C5139R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* renamed from: D0 */
    public static final int[] f31583D0 = {R.attr.state_checked};

    /* renamed from: A0 */
    public boolean f31584A0;

    /* renamed from: B0 */
    public Drawable f31585B0;

    /* renamed from: C0 */
    public final AccessibilityDelegateCompat f31586C0;

    /* renamed from: q0 */
    public int f31587q0;

    /* renamed from: t0 */
    public boolean f31588t0;

    /* renamed from: u0 */
    public boolean f31589u0;

    /* renamed from: v0 */
    public boolean f31590v0;

    /* renamed from: w0 */
    public final CheckedTextView f31591w0;

    /* renamed from: x0 */
    public FrameLayout f31592x0;

    /* renamed from: y0 */
    public MenuItemImpl f31593y0;

    /* renamed from: z0 */
    public ColorStateList f31594z0;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    /* loaded from: classes6.dex */
    public class C5295a extends AccessibilityDelegateCompat {
        public C5295a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f31589u0);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f31592x0 == null) {
                this.f31592x0 = (FrameLayout) ((ViewStub) findViewById(C5139R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f31592x0.removeAllViews();
            this.f31592x0.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f31593y0;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f31593y0 = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, m24252s());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        m24251r();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f31593y0;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f31593y0.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f31583D0);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    /* renamed from: r */
    public final void m24251r() {
        if (m24253t()) {
            this.f31591w0.setVisibility(8);
            FrameLayout frameLayout = this.f31592x0;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.f31592x0.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f31591w0.setVisibility(0);
        FrameLayout frameLayout2 = this.f31592x0;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.f31592x0.setLayoutParams(layoutParams2);
        }
    }

    public void recycle() {
        FrameLayout frameLayout = this.f31592x0;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f31591w0.setCompoundDrawables(null, null, null, null);
    }

    @Nullable
    /* renamed from: s */
    public final StateListDrawable m24252s() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0118R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f31583D0, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f31589u0 != z) {
            this.f31589u0 = z;
            this.f31586C0.sendAccessibilityEvent(this.f31591w0, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f31591w0.setChecked(z);
        CheckedTextView checkedTextView = this.f31591w0;
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z && this.f31590v0) ? 1 : 0);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f31584A0) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f31594z0);
            }
            int i = this.f31587q0;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f31588t0) {
            if (this.f31585B0 == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), C5139R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f31585B0 = drawable2;
                if (drawable2 != null) {
                    int i2 = this.f31587q0;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f31585B0;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f31591w0, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f31591w0.setCompoundDrawablePadding(i);
    }

    public void setIconSize(@Dimension int i) {
        this.f31587q0 = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f31594z0 = colorStateList;
        this.f31584A0 = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f31593y0;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f31591w0.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f31588t0 = z;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.f31591w0, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f31591w0.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f31591w0.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    /* renamed from: t */
    public final boolean m24253t() {
        return this.f31593y0.getTitle() == null && this.f31593y0.getIcon() == null && this.f31593y0.getActionView() != null;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31590v0 = true;
        C5295a c5295a = new C5295a();
        this.f31586C0 = c5295a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(C5139R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C5139R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C5139R.id.design_menu_item_text);
        this.f31591w0 = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, c5295a);
    }

    public void initialize(@NonNull MenuItemImpl menuItemImpl, boolean z) {
        this.f31590v0 = z;
        initialize(menuItemImpl, 0);
    }
}
