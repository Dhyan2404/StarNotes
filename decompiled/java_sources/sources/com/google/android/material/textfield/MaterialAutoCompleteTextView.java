package com.google.android.material.textfield;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;

/* loaded from: classes6.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: q */
    public static final int f32703q = 15;

    /* renamed from: r */
    public static final String f32704r = "SwitchAccess";

    /* renamed from: i */
    @NonNull
    public final ListPopupWindow f32705i;

    /* renamed from: j */
    @Nullable
    public final AccessibilityManager f32706j;

    /* renamed from: k */
    @NonNull
    public final Rect f32707k;

    /* renamed from: l */
    @LayoutRes
    public final int f32708l;

    /* renamed from: m */
    public final float f32709m;

    /* renamed from: n */
    @Nullable
    public ColorStateList f32710n;

    /* renamed from: o */
    public int f32711o;

    /* renamed from: p */
    @Nullable
    public ColorStateList f32712p;

    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$a */
    /* loaded from: classes6.dex */
    public class C5420a implements AdapterView.OnItemClickListener {
        public C5420a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            MaterialAutoCompleteTextView.this.m25182l(i < 0 ? materialAutoCompleteTextView.f32705i.getSelectedItem() : materialAutoCompleteTextView.getAdapter().getItem(i));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    view = MaterialAutoCompleteTextView.this.f32705i.getSelectedView();
                    i = MaterialAutoCompleteTextView.this.f32705i.getSelectedItemPosition();
                    j = MaterialAutoCompleteTextView.this.f32705i.getSelectedItemId();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f32705i.getListView(), view, i, j);
            }
            MaterialAutoCompleteTextView.this.f32705i.dismiss();
        }
    }

    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$b */
    /* loaded from: classes6.dex */
    public class C5421b<T> extends ArrayAdapter<String> {

        /* renamed from: e */
        @Nullable
        public ColorStateList f32714e;

        /* renamed from: f */
        @Nullable
        public ColorStateList f32715f;

        public C5421b(@NonNull Context context, int i, @NonNull String[] strArr) {
            super(context, i, strArr);
            m25188f();
        }

        @Nullable
        /* renamed from: a */
        public final ColorStateList m25183a() {
            if (!m25185c() || !m25186d()) {
                return null;
            }
            int[] iArr = {R.attr.state_hovered, -16842919};
            int[] iArr2 = {R.attr.state_selected, -16842919};
            return new ColorStateList(new int[][]{iArr2, iArr, new int[0]}, new int[]{MaterialColors.layer(MaterialAutoCompleteTextView.this.f32711o, MaterialAutoCompleteTextView.this.f32712p.getColorForState(iArr2, 0)), MaterialColors.layer(MaterialAutoCompleteTextView.this.f32711o, MaterialAutoCompleteTextView.this.f32712p.getColorForState(iArr, 0)), MaterialAutoCompleteTextView.this.f32711o});
        }

        @Nullable
        /* renamed from: b */
        public final Drawable m25184b() {
            if (!m25185c()) {
                return null;
            }
            ColorDrawable colorDrawable = new ColorDrawable(MaterialAutoCompleteTextView.this.f32711o);
            if (this.f32715f == null) {
                return colorDrawable;
            }
            DrawableCompat.setTintList(colorDrawable, this.f32714e);
            return new RippleDrawable(this.f32715f, colorDrawable, null);
        }

        /* renamed from: c */
        public final boolean m25185c() {
            return MaterialAutoCompleteTextView.this.f32711o != 0;
        }

        /* renamed from: d */
        public final boolean m25186d() {
            return MaterialAutoCompleteTextView.this.f32712p != null;
        }

        /* renamed from: e */
        public final ColorStateList m25187e() {
            if (!m25186d()) {
                return null;
            }
            int[] iArr = {R.attr.state_pressed};
            return new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{MaterialAutoCompleteTextView.this.f32712p.getColorForState(iArr, 0), 0});
        }

        /* renamed from: f */
        public void m25188f() {
            this.f32715f = m25187e();
            this.f32714e = m25183a();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, @Nullable View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                ViewCompat.setBackground(textView, MaterialAutoCompleteTextView.this.getText().toString().contentEquals(textView.getText()) ? m25184b() : null);
            }
            return view2;
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.AutoCompleteTextView
    public void dismissDropDown() {
        if (m25177g()) {
            this.f32705i.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    @Nullable
    /* renamed from: f */
    public final TextInputLayout m25176f() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final boolean m25177g() {
        return m25179i() || m25178h();
    }

    @Nullable
    public ColorStateList getDropDownBackgroundTintList() {
        return this.f32710n;
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout m25176f = m25176f();
        return (m25176f == null || !m25176f.isProvidingHint()) ? super.getHint() : m25176f.getHint();
    }

    public float getPopupElevation() {
        return this.f32709m;
    }

    public int getSimpleItemSelectedColor() {
        return this.f32711o;
    }

    @Nullable
    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f32712p;
    }

    /* renamed from: h */
    public final boolean m25178h() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f32706j;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = this.f32706j.getEnabledAccessibilityServiceList(16)) != null) {
            for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains(f32704r)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m25179i() {
        AccessibilityManager accessibilityManager = this.f32706j;
        return accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled();
    }

    /* renamed from: j */
    public final int m25180j() {
        ListAdapter adapter = getAdapter();
        TextInputLayout m25176f = m25176f();
        int i = 0;
        if (adapter == null || m25176f == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int min = Math.min(adapter.getCount(), Math.max(0, this.f32705i.getSelectedItemPosition()) + 15);
        View view = null;
        int i2 = 0;
        for (int max = Math.max(0, min - 15); max < min; max++) {
            int itemViewType = adapter.getItemViewType(max);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = adapter.getView(max, view, m25176f);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        Drawable background = this.f32705i.getBackground();
        if (background != null) {
            background.getPadding(this.f32707k);
            Rect rect = this.f32707k;
            i2 += rect.left + rect.right;
        }
        return i2 + m25176f.getEndIconView().getMeasuredWidth();
    }

    /* renamed from: k */
    public final void m25181k() {
        TextInputLayout m25176f = m25176f();
        if (m25176f != null) {
            m25176f.m25244n0();
        }
    }

    /* renamed from: l */
    public final <T extends ListAdapter & Filterable> void m25182l(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m25176f = m25176f();
        if (m25176f != null && m25176f.isProvidingHint() && super.getHint() == null && ManufacturerUtils.isMeizuDevice()) {
            setHint("");
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f32705i.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m25180j()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (m25177g()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t) {
        super.setAdapter(t);
        this.f32705i.setAdapter(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f32705i;
        if (listPopupWindow != null) {
            listPopupWindow.setBackgroundDrawable(drawable);
        }
    }

    public void setDropDownBackgroundTint(@ColorInt int i) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void setDropDownBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f32710n = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) dropDownBackground).setFillColor(this.f32710n);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f32705i.setOnItemSelectedListener(getOnItemSelectedListener());
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i) {
        super.setRawInputType(i);
        m25181k();
    }

    public void setSimpleItemSelectedColor(int i) {
        this.f32711o = i;
        if (getAdapter() instanceof C5421b) {
            ((C5421b) getAdapter()).m25188f();
        }
    }

    public void setSimpleItemSelectedRippleColor(@Nullable ColorStateList colorStateList) {
        this.f32712p = colorStateList;
        if (getAdapter() instanceof C5421b) {
            ((C5421b) getAdapter()).m25188f();
        }
    }

    public void setSimpleItems(@ArrayRes int i) {
        setSimpleItems(getResources().getStringArray(i));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        if (m25177g()) {
            this.f32705i.show();
        } else {
            super.showDropDown();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.autoCompleteTextViewStyle);
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new C5421b(getContext(), this.f32708l, strArr));
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 0), attributeSet, i);
        this.f32707k = new Rect();
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C5139R.styleable.MaterialAutoCompleteTextView, i, C5139R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.MaterialAutoCompleteTextView_android_inputType) && obtainStyledAttributes.getInt(C5139R.styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f32708l = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialAutoCompleteTextView_simpleItemLayout, C5139R.layout.mtrl_auto_complete_simple_item);
        this.f32709m = obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialAutoCompleteTextView_android_popupElevation, C5139R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint)) {
            this.f32710n = ColorStateList.valueOf(obtainStyledAttributes.getColor(C5139R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint, 0));
        }
        this.f32711o = obtainStyledAttributes.getColor(C5139R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor, 0);
        this.f32712p = MaterialResources.getColorStateList(context2, obtainStyledAttributes, C5139R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor);
        this.f32706j = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f32705i = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new C5420a());
        if (obtainStyledAttributes.hasValue(C5139R.styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        obtainStyledAttributes.recycle();
    }
}
