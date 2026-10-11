package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: v */
    public static final String f1141v = "ListMenuItemView";

    /* renamed from: e */
    public MenuItemImpl f1142e;

    /* renamed from: f */
    public ImageView f1143f;

    /* renamed from: g */
    public RadioButton f1144g;

    /* renamed from: h */
    public TextView f1145h;

    /* renamed from: i */
    public CheckBox f1146i;

    /* renamed from: j */
    public TextView f1147j;

    /* renamed from: k */
    public ImageView f1148k;

    /* renamed from: l */
    public ImageView f1149l;

    /* renamed from: m */
    public LinearLayout f1150m;

    /* renamed from: n */
    public Drawable f1151n;

    /* renamed from: o */
    public int f1152o;

    /* renamed from: p */
    public Context f1153p;

    /* renamed from: q */
    public boolean f1154q;

    /* renamed from: r */
    public Drawable f1155r;

    /* renamed from: s */
    public boolean f1156s;

    /* renamed from: t */
    public LayoutInflater f1157t;

    /* renamed from: u */
    public boolean f1158u;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.f1157t == null) {
            this.f1157t = LayoutInflater.from(getContext());
        }
        return this.f1157t;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f1148k;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public final void m591a(View view) {
        m592b(view, -1);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f1149l;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1149l.getLayoutParams();
        rect.top += this.f1149l.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final void m592b(View view, int i) {
        LinearLayout linearLayout = this.f1150m;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: c */
    public final void m593c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C0118R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f1146i = checkBox;
        m591a(checkBox);
    }

    /* renamed from: d */
    public final void m594d() {
        ImageView imageView = (ImageView) getInflater().inflate(C0118R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f1143f = imageView;
        m592b(imageView, 0);
    }

    /* renamed from: e */
    public final void m595e() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C0118R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f1144g = radioButton;
        m591a(radioButton);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f1142e;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.f1142e = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.m623f(this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.m627j(), menuItemImpl.m621d());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.getContentDescription());
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f1151n);
        TextView textView = (TextView) findViewById(C0118R.id.title);
        this.f1145h = textView;
        int i = this.f1152o;
        if (i != -1) {
            textView.setTextAppearance(this.f1153p, i);
        }
        this.f1147j = (TextView) findViewById(C0118R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(C0118R.id.submenuarrow);
        this.f1148k = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f1155r);
        }
        this.f1149l = (ImageView) findViewById(C0118R.id.group_divider);
        this.f1150m = (LinearLayout) findViewById(C0118R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f1143f != null && this.f1154q) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1143f.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.f1144g == null && this.f1146i == null) {
            return;
        }
        if (this.f1142e.isExclusiveCheckable()) {
            if (this.f1144g == null) {
                m595e();
            }
            compoundButton = this.f1144g;
            view = this.f1146i;
        } else {
            if (this.f1146i == null) {
                m593c();
            }
            compoundButton = this.f1146i;
            view = this.f1144g;
        }
        if (z) {
            compoundButton.setChecked(this.f1142e.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f1146i;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f1144g;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f1142e.isExclusiveCheckable()) {
            if (this.f1144g == null) {
                m595e();
            }
            compoundButton = this.f1144g;
        } else {
            if (this.f1146i == null) {
                m593c();
            }
            compoundButton = this.f1146i;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f1158u = z;
        this.f1154q = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f1149l;
        if (imageView != null) {
            imageView.setVisibility((this.f1156s || !z) ? 8 : 0);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        boolean z = this.f1142e.shouldShowIcon() || this.f1158u;
        if (z || this.f1154q) {
            ImageView imageView = this.f1143f;
            if (imageView == null && drawable == null && !this.f1154q) {
                return;
            }
            if (imageView == null) {
                m594d();
            }
            if (drawable == null && !this.f1154q) {
                this.f1143f.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f1143f;
            if (!z) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f1143f.getVisibility() != 0) {
                this.f1143f.setVisibility(0);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
        int i = (z && this.f1142e.m627j()) ? 0 : 8;
        if (i == 0) {
            this.f1147j.setText(this.f1142e.m622e());
        }
        if (this.f1147j.getVisibility() != i) {
            this.f1147j.setVisibility(i);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f1145h.getVisibility() != 8) {
                this.f1145h.setVisibility(8);
            }
        } else {
            this.f1145h.setText(charSequence);
            if (this.f1145h.getVisibility() != 0) {
                this.f1145h.setVisibility(0);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return this.f1158u;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, C0118R.styleable.MenuView, i, 0);
        this.f1151n = obtainStyledAttributes.getDrawable(C0118R.styleable.MenuView_android_itemBackground);
        this.f1152o = obtainStyledAttributes.getResourceId(C0118R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f1154q = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuView_preserveIconSpacing, false);
        this.f1153p = context;
        this.f1155r = obtainStyledAttributes.getDrawable(C0118R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, C0118R.attr.dropDownListViewStyle, 0);
        this.f1156s = obtainStyledAttributes2.hasValue(0);
        obtainStyledAttributes.recycle();
        obtainStyledAttributes2.recycle();
    }
}
